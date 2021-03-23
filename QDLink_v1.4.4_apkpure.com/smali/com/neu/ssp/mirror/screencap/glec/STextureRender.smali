.class Lcom/neu/ssp/mirror/screencap/glec/STextureRender;
.super Ljava/lang/Object;
.source "STextureRender.java"


# static fields
.field private static final a:I = 0x4

.field private static final b:[F

.field private static final c:[F

.field private static final d:Ljava/nio/FloatBuffer;

.field private static final e:Ljava/nio/FloatBuffer;

.field private static final f:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec4 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = uSTMatrix * aTextureCoord;\n}\n"

.field private static final g:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec4 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord.xy/vTextureCoord.z);}\n"


# instance fields
.field private h:[F

.field private i:[F

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [F

    .line 15
    fill-array-data v0, :array_0

    sput-object v0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->b:[F

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 22
    fill-array-data v0, :array_1

    sput-object v0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->c:[F

    .line 29
    sget-object v0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->b:[F

    .line 30
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/glec/GlUtil;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->d:Ljava/nio/FloatBuffer;

    .line 31
    sget-object v0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->c:[F

    .line 32
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/glec/GlUtil;->a([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->e:Ljava/nio/FloatBuffer;

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 56
    iput-object v1, p0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->h:[F

    new-array v0, v0, [F

    .line 57
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->i:[F

    const/16 v0, -0x3039

    .line 60
    iput v0, p0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->k:I

    .line 67
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->i:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method private static e()I
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 102
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const v0, 0x84c0

    .line 103
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 104
    aget v0, v1, v2

    const v3, 0x8d65

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v0, 0x812f

    const/16 v4, 0x2802

    .line 105
    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v4, 0x2803

    .line 107
    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2600

    const/16 v4, 0x2801

    .line 109
    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v4, 0x2800

    .line 111
    invoke-static {v3, v4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 113
    aget v0, v1, v2

    return v0
.end method


# virtual methods
.method final a()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->k:I

    return v0
.end method

.method final b()V
    .locals 5

    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec4 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = uSTMatrix * aTextureCoord;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec4 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord.xy/vTextureCoord.z);}\n"

    .line 78
    invoke-static {v0, v1}, Lcom/neu/ssp/mirror/screencap/glec/GlUtil;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->j:I

    .line 79
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->j:I

    if-eqz v0, :cond_0

    const-string v1, "aPosition"

    .line 83
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->n:I

    .line 84
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->j:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->o:I

    .line 85
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->j:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->l:I

    .line 86
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->j:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->m:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 1102
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const v0, 0x84c0

    .line 1103
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1104
    aget v0, v1, v2

    const v3, 0x8d65

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2802

    const v4, 0x812f

    .line 1105
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 1107
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    const/16 v4, 0x2600

    .line 1109
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    .line 1111
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 1113
    aget v0, v1, v2

    .line 88
    iput v0, p0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->k:I

    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed creating program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final c()V
    .locals 1

    .line 92
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->j:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return-void
.end method

.method final d()V
    .locals 7

    .line 121
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->j:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 124
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->n:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 127
    iget v1, p0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->n:I

    sget-object v6, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->d:Ljava/nio/FloatBuffer;

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 131
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->o:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 134
    iget v1, p0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->o:I

    sget-object v6, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->e:Ljava/nio/FloatBuffer;

    const/4 v2, 0x4

    const/16 v5, 0x10

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 137
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->h:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 138
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->l:I

    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->h:[F

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 139
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->m:I

    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->i:[F

    invoke-static {v0, v3, v1, v2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 v0, 0x5

    const/4 v2, 0x4

    .line 143
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 146
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->n:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 147
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->o:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 148
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method
