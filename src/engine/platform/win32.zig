const win32 = @import("std").os.windows;

pub const WINAPI = win32.WINAPI;

pub const HWND = win32.HWND;
pub const HINSTANCE = win32.HINSTANCE;
pub const HMODULE = win32.HMODULE;
pub const DWORD = win32.DWORD;
pub const HMENU = win32.HMENU;
pub const LPVOID = win32.LPVOID;
pub const HDC = win32.HDC;
pub const HGLRC = win32.HGLRC;
pub const ATOM = win32.ATOM;
pub const WCHAR = win32.WCHAR;
pub const WNDCLASSEXW = win32.user32.WNDCLASSEXW;
pub const PIXELFORMATDESCRIPTOR = win32.gdi32.PIXELFORMATDESCRIPTOR;
pub const LPPIXELFORMATDESCRIPTOR = *PIXELFORMATDESCRIPTOR;
pub const HCURSOR = win32.HCURSOR;
pub const LPCSTR = win32.LPCSTR;
pub const LPCWSTR = win32.LPCWSTR;
pub const HICON = win32.HICON;
pub const UINT = win32.UINT;
pub const CS_HREDRAW = win32.user32.CS_HREDRAW;
pub const CS_VREDRAW = win32.user32.CS_VREDRAW;
pub const CS_OWNDC = win32.user32.CS_OWNDC;

pub const GetLastError = win32.kernel32.GetLastError;
pub const GetModuleHandleW = win32.kernel32.GetModuleHandleW;
pub const RegisterClassExW = win32.user32.RegisterClassExW;
pub const ShowWindow = win32.user32.ShowWindow;
pub const GetDC = win32.user32.GetDC;
pub const ChoosePixelFormat = win32.gdi32.ChoosePixelFormat;
pub const SetPixelFormat = win32.gdi32.SetPixelFormat;
pub const wglCreateContext = win32.gdi32.wglCreateContext;
pub const wglMakeCurrent = win32.gdi32.wglMakeCurrent;
pub const LoadLibraryW = win32.kernel32.LoadLibraryW;
pub const FreeLibrary = win32.kernel32.FreeLibrary;
pub const GetProcAddress = win32.kernel32.GetProcAddress;
pub const SetWindowLongPtrW = win32.user32.setWindowLongPtrW;
pub const PeekMessageW = win32.user32.PeekMessageW;
pub const TranslateMessage = win32.user32.TranslateMessage;
pub const DispatchMessageW = win32.user32.DispatchMessageW;
pub const PostQuitMessage = win32.user32.PostQuitMessage;

pub extern "user32" fn LoadCursor(?HINSTANCE, LPCWSTR) callconv(WINAPI) ATOM;
pub extern "user32" fn LoadIcon(?HINSTANCE, LPCWSTR) callconv(WINAPI) ATOM;
pub extern "gdi32" fn DescribePixelFormat(HDC, i32, UINT, LPPIXELFORMATDESCRIPTOR) callconv(WINAPI) ATOM;
