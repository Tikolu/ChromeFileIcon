# Chrome File Icon

[Google Chrome](https://chrome.google.com) can be associated with multiple file extensions, such as HTML, PDF and even DOCX, PPTX and XLSX, if using the [Office Editing for Docs, Sheets & Slides](https://chrome.google.com/webstore/detail/office-editing-for-docs-s/gbkeegbaiigmenfmjfclcdgdpimamgkj) extension.

The problem is, that all of these files get the default Chrome icon.
In certain situations, such as on the desktop, this can make it difficult to distinguish what is a file, and what is the browser.
PDF files are documents and should look as such, with an icon portraying a document.

This icon, installable on Windows, fixes these issues by displaying a slightly modified version of the Chrome icon for files.

| Original    | With File Icon |
| ----------- | -------------- |
| ![image](https://user-images.githubusercontent.com/22964601/199859096-45a86c40-09a6-4179-8494-150c87477e4d.png) | ![image](https://user-images.githubusercontent.com/22964601/199858856-7b5722b8-8451-4c55-99c1-dcdf1b9e0dd5.png) |

| The icon is clearly recognizable, even in small layouts: |
| -------------------------------------------------------- |
| ![image](https://user-images.githubusercontent.com/22964601/199859925-c38f4b68-184b-4ccd-bbb4-3b9f7583c5fb.png) |

## Compatability
Although tested only on Windows 11, this should also work on Windows 7, 8 and 10.

## Installation
Download the files from [here](https://github.com/Tikolu/ChromeFileIcon/archive/refs/heads/main.zip), extract the ZIP file and run `install.cmd` as Administrator.

The script will copy the icon file to a permanent location, and update the necessary registry keys.
After installation, a restart of explorer (the Windows UI) is required for the icons to be visible.
The script can also perform this action.
