const win32 = @import("win32.zig");
const win32_window = @import("win32_window.zig");

const OpenGL = struct {
    const Self = @This();

    device_context: win32.HDC,
    render_context: win32.HGLRC,

    pub fn init(window: win32_window.Window) !Self {
        _ = window;

        // const dummy_pixel_format = win32.PIXELFORMATDESCRIPTOR{
        //     .nVersion = 1,
        //     .dwFlags = win32.PFD_DRAW_TO_WINDOW | win32.PFD_SUPPORT_OPENGL | win32.PFD_DOUBLEBUFFER,
        //     .iPixelType = win32.PFD_TYPE_RGBA,
        //     .cColorBits = 32,
        //     .cAlphaBits = 8,
        //     .cDepthBits = 24,
        //     .cRedBits = 0,
        //     .cRedShift = 0,
        //     .cGreenBits = 0,
        //     .cGreenShift = 0,
        //     .cBlueBits = 0,
        //     .cBlueShift = 0,
        //     .cAlphaShift = 0,
        //     .cAccumBits = 0,
        //     .cAccumRedBits = 0,
        //     .cAccumGreenBits = 0,
        //     .cAccumBlueBits = 0,
        //     .cAccumAlphaBits = 0,
        //     .cStencilBits = 0,
        //     .cAuxBuffers = 0,
        //     .iLayerType = 0,
        //     .bReserved = 0,
        //     .dwLayerMask = 0,
        //     .dwVisibleMask = 0,
        //     .dwDamageMask = 0,
        // };

        // const pixel_attribs = [_]i32{
        //     win32.WGL_DRAW_TO_WINDOW_ARB, 1,
        //     win32.WGL_SUPPORT_OPENGL_ARB, 1,
        //     win32.WGL_DOUBLE_BUFFER_ARB,  1,
        //     win32.WGL_PIXEL_TYPE_ARB,     win32.WGL_TYPE_RGBA_ARB,
        //     win32.WGL_ACCELERATION_ARB,   win32.WGL_FULL_ACCELERATION_ARB,
        //     win32.WGL_COLOR_BITS_ARB,     32,
        //     win32.WGL_ALPHA_BITS_ARB,     8,
        //     win32.WGL_DEPTH_BITS_ARB,     24,
        //     win32.WGL_STENCIL_BITS_ARB,   8,
        //     win32.WGL_SAMPLES_ARB,        4,
        //     0,
        // };
        // _ = pixel_attribs;

        // _ = dummy_pixel_format;
    }
};
