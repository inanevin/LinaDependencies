/*
This file is a part of: LinaVG
https://github.com/inanevin/LinaVG

Author: Inan Evin
http://www.inanevin.com

Copyright (c) [2022-] [Inan Evin]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/
/*
Class: GLBackend



Timestamp: 3/24/2022 11:33:52 PM
*/

#pragma once

#ifndef LinaVGGLBackend_HPP
#define LinaVGGLBackend_HPP

// Headers here.
#include "../BaseBackend.hpp"

namespace LinaVG
{
    namespace Internal
    {
        class ShaderData;
    }
} // namespace LinaVG
namespace LinaVG::Backend
{
    class GLBackend : public BaseBackend
    {
    public:
        GLBackend()  = default;
        virtual ~GLBackend() = default;

        struct GLState
        {
            bool m_blendEnabled       = false;
            bool m_cullFaceEnabled    = false;
            bool m_stencilTestEnabled = false;
            bool m_depthTestEnabled   = false;
            bool m_scissorTestEnabled = false;
            bool m_depthMaskEnabled   = false;
            int  m_blendEq            = 0;
            int  m_blendSrcAlpha      = 0;
            int  m_blendSrcRGB        = 0;
            int  m_blendDestAlpha     = 0;
            int  m_blendDestRGB       = 0;
            int  m_unpackAlignment    = 0;
        };

        virtual bool          Initialize() override;
        virtual void          Terminate() override;
        virtual void          StartFrame() override;
        virtual void          DrawGradient(GradientDrawBuffer* buf) override;
        virtual void          DrawTextured(TextureDrawBuffer* buf) override;
        virtual void          DrawDefault(DrawBuffer* buf) override;
        virtual void          DrawSimpleText(SimpleTextDrawBuffer* buf) override;
        virtual void          DrawSDFText(SDFTextDrawBuffer* buf) override;
        virtual void          EndFrame() override;
        virtual void          BufferFontTextureAtlas(int width, int height, int offsetX, int offsetY, unsigned char* data) override;
        virtual void          BindFontTexture(BackendHandle texture) override;
        virtual void          SaveAPIState() override;
        virtual void          RestoreAPIState() override;
        virtual BackendHandle CreateFontTexture(int width, int height) override;

    private:
        void SetScissors(BackendHandle x, BackendHandle y, BackendHandle width, BackendHandle height);
        void AddShaderUniforms(Internal::ShaderData& data);
        void CreateShader(Internal::ShaderData& data, const char* vert, const char* frag);

    private:
        GLState m_glState;
    };

} // namespace LinaVG::Backend

#endif