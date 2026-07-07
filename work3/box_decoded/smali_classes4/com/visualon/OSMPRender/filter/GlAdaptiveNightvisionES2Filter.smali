.class public Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES2Filter;
.super Lcom/visualon/OSMPRender/filter/GlFilter;
.source "GlAdaptiveNightvisionES2Filter.java"


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "    precision highp float;\n    uniform lowp sampler2D sTexture;\n   \n    varying highp vec2 vTextureCoord;\n    varying mediump vec2 neighbor_coordinate[4];\n    uniform bool enhance;\n    uniform float backlight_scale;\n   \n    void main()\n    {\n    highp vec3 yuv;\n    highp vec3 rgb;\n    rgb.x = texture2D(sTexture, vTextureCoord).r;\n    rgb.y = texture2D(sTexture, vTextureCoord).g;\n    rgb.z = texture2D(sTexture, vTextureCoord).b;\n    yuv = mat3(0.299, -0.16874, 0.5,\n    0.587, -.3313, -.4187,\n    0.114, 0.5, -0.0813) * rgb;\n    if (enhance) {\n      float y_value = yuv.x * 255.;\n      /* 1. Calculate low frequency (base) and high frequency (detail) components */\n      float local_y_sum = 0.;\n      /* Constants are normalized values of  exp(-1), exp(-0.5) & exp(0) */\n      local_y_sum =\n        texture2D(sTexture, vTextureCoord + neighbor_coordinate[0]).r +\n        texture2D(sTexture, vTextureCoord + neighbor_coordinate[1]).r +\n        texture2D(sTexture, vTextureCoord + neighbor_coordinate[2]).r +\n        texture2D(sTexture, vTextureCoord + neighbor_coordinate[3]).r; \n      local_y_sum /= 4.;\n      local_y_sum = 1.164 * (local_y_sum - 0.0625);\n     \n      /* 2. Parameters for enhancement */\n      float adjusted_backlight_scale = clamp(1.0 * backlight_scale + 0.3, 0., 1.);\n      float avg_brightness = 80.;\n      float theta_max = 255., theta_min = 255. * adjusted_backlight_scale;\n      float theta = (avg_brightness - 64.) * (theta_max - theta_min) / 64. + theta_min;\n      float n = 255. * theta_min / theta;\n      float m = -n / theta_min / theta_min;\n     \n      /* 3. Calculate each component and their enhanced results */\n      float low_freq = local_y_sum * 255.;\n      float high_freq = y_value - low_freq;\n     \n      float ipbz = 255.;\n      if (low_freq <= theta_min)\n        ipbz = 0.67 * (m * (low_freq - theta_min) * (low_freq - theta_min) + n)\n          + 0.33 * (255. * low_freq / theta);\n      else if (low_freq <= theta)\n        ipbz = (255. - n) / (theta - theta_min + 1e-6) * (low_freq - theta_min) + n;\n     \n      float ipdz = ipbz * high_freq / (low_freq + 1e-6) / adjusted_backlight_scale;\n      float enhanced_y = ipbz + ipdz;\n     \n      /* Mix original and enhanced y value */\n      float alpha = backlight_scale;\n      y_value = (1. - alpha) * enhanced_y + alpha * y_value;\n      yuv.x = y_value / 255.;\n    }\n   \n    rgb = mat3(      1,       1,      1,\n    0, -.34414, 1.772,\n    1.402, -.71414,      0) * yuv;\n   \n    gl_FragColor = vec4(rgb, 1);\n    }"

.field private static final VERTEX_SHADER:Ljava/lang/String; = "    attribute vec4 aPosition;\n    attribute mediump vec4 aTextureCoord;\n    varying mediump vec2 vTextureCoord;\n    uniform bool enhance;\n    varying mediump vec2 neighbor_coordinate[4];\n    void main()\n    {\n    if (enhance) {\n      /* Define the neighbor region for Gaussian filter */\n      const float x_offset = 0.003;\n      const float y_offset = 0.003;\n      neighbor_coordinate[0] = vec2(-x_offset, 0);\n      neighbor_coordinate[1] = vec2(0, -y_offset);\n      neighbor_coordinate[2] = vec2(0, y_offset);\n      neighbor_coordinate[3] = vec2(x_offset, 0);\n    }\n    gl_Position = aPosition;\n    vTextureCoord = aTextureCoord.xy;\n    }"


# instance fields
.field private backlight_scale:F

.field private enhance:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "    attribute vec4 aPosition;\n    attribute mediump vec4 aTextureCoord;\n    varying mediump vec2 vTextureCoord;\n    uniform bool enhance;\n    varying mediump vec2 neighbor_coordinate[4];\n    void main()\n    {\n    if (enhance) {\n      /* Define the neighbor region for Gaussian filter */\n      const float x_offset = 0.003;\n      const float y_offset = 0.003;\n      neighbor_coordinate[0] = vec2(-x_offset, 0);\n      neighbor_coordinate[1] = vec2(0, -y_offset);\n      neighbor_coordinate[2] = vec2(0, y_offset);\n      neighbor_coordinate[3] = vec2(x_offset, 0);\n    }\n    gl_Position = aPosition;\n    vTextureCoord = aTextureCoord.xy;\n    }"

    const-string v1, "    precision highp float;\n    uniform lowp sampler2D sTexture;\n   \n    varying highp vec2 vTextureCoord;\n    varying mediump vec2 neighbor_coordinate[4];\n    uniform bool enhance;\n    uniform float backlight_scale;\n   \n    void main()\n    {\n    highp vec3 yuv;\n    highp vec3 rgb;\n    rgb.x = texture2D(sTexture, vTextureCoord).r;\n    rgb.y = texture2D(sTexture, vTextureCoord).g;\n    rgb.z = texture2D(sTexture, vTextureCoord).b;\n    yuv = mat3(0.299, -0.16874, 0.5,\n    0.587, -.3313, -.4187,\n    0.114, 0.5, -0.0813) * rgb;\n    if (enhance) {\n      float y_value = yuv.x * 255.;\n      /* 1. Calculate low frequency (base) and high frequency (detail) components */\n      float local_y_sum = 0.;\n      /* Constants are normalized values of  exp(-1), exp(-0.5) & exp(0) */\n      local_y_sum =\n        texture2D(sTexture, vTextureCoord + neighbor_coordinate[0]).r +\n        texture2D(sTexture, vTextureCoord + neighbor_coordinate[1]).r +\n        texture2D(sTexture, vTextureCoord + neighbor_coordinate[2]).r +\n        texture2D(sTexture, vTextureCoord + neighbor_coordinate[3]).r; \n      local_y_sum /= 4.;\n      local_y_sum = 1.164 * (local_y_sum - 0.0625);\n     \n      /* 2. Parameters for enhancement */\n      float adjusted_backlight_scale = clamp(1.0 * backlight_scale + 0.3, 0., 1.);\n      float avg_brightness = 80.;\n      float theta_max = 255., theta_min = 255. * adjusted_backlight_scale;\n      float theta = (avg_brightness - 64.) * (theta_max - theta_min) / 64. + theta_min;\n      float n = 255. * theta_min / theta;\n      float m = -n / theta_min / theta_min;\n     \n      /* 3. Calculate each component and their enhanced results */\n      float low_freq = local_y_sum * 255.;\n      float high_freq = y_value - low_freq;\n     \n      float ipbz = 255.;\n      if (low_freq <= theta_min)\n        ipbz = 0.67 * (m * (low_freq - theta_min) * (low_freq - theta_min) + n)\n          + 0.33 * (255. * low_freq / theta);\n      else if (low_freq <= theta)\n        ipbz = (255. - n) / (theta - theta_min + 1e-6) * (low_freq - theta_min) + n;\n     \n      float ipdz = ipbz * high_freq / (low_freq + 1e-6) / adjusted_backlight_scale;\n      float enhanced_y = ipbz + ipdz;\n     \n      /* Mix original and enhanced y value */\n      float alpha = backlight_scale;\n      y_value = (1. - alpha) * enhanced_y + alpha * y_value;\n      yuv.x = y_value / 255.;\n    }\n   \n    rgb = mat3(      1,       1,      1,\n    0, -.34414, 1.772,\n    1.402, -.71414,      0) * yuv;\n   \n    gl_FragColor = vec4(rgb, 1);\n    }"

    .line 110
    invoke-direct {p0, v0, v1}, Lcom/visualon/OSMPRender/filter/GlFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 100
    iput v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES2Filter;->backlight_scale:F

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES2Filter;->enhance:Z

    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 2

    const-string v0, "backlight_scale"

    .line 115
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES2Filter;->getHandle(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES2Filter;->backlight_scale:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const-string v0, "enhance"

    .line 116
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES2Filter;->getHandle(Ljava/lang/String;)I

    move-result v0

    iget-boolean v1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES2Filter;->enhance:Z

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method public setEnhancementLevel(F)V
    .locals 1

    .line 105
    iput p1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES2Filter;->backlight_scale:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 106
    :goto_0
    iput-boolean p1, p0, Lcom/visualon/OSMPRender/filter/GlAdaptiveNightvisionES2Filter;->enhance:Z

    return-void
.end method
