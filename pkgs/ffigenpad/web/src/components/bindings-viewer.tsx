import { StreamLanguage } from "@codemirror/language";
import { dart } from "@codemirror/legacy-modes/mode/clike";
import { EditorState } from "@codemirror/state";
import { basicSetup, EditorView } from "codemirror";
import { createEffect, onMount } from "solid-js";
import { Box } from "styled-system/jsx";
import { $bindings } from "~/lib/bindings";
import { $theme, editorThemeConfig } from "~/lib/theme";

export const BindingsViewer = () => {
  const [bindings] = $bindings;

  let editorRef: HTMLDivElement;
  let editor: EditorView;

  onMount(() => {
    editor = new EditorView({
      doc: bindings(),
      extensions: [
        basicSetup,
        StreamLanguage.define(dart),
        editorThemeConfig.of([$theme.editorTheme()]),
        EditorView.theme({
          "&": {
            height: "100%",
          },
        }),
        EditorState.readOnly.of(true),
      ],
      parent: editorRef!,
    });

    return () => {
      editor.destroy();
    };
  });

  createEffect(() => {
    if (editor) {
      editor.dispatch({
        changes: { from: 0, to: editor.state.doc.length, insert: bindings() },
      });
    }
  });

  createEffect(() => {
    if (editor) {
      editor.dispatch($theme.editorThemeTransaction());
    }
  });

  return <Box height="full" flexGrow={1} ref={editorRef} />;
};
