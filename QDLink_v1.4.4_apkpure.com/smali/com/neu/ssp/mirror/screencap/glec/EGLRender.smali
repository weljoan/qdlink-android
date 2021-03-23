.class public Lcom/neu/ssp/mirror/screencap/glec/EGLRender;
.super Ljava/lang/Object;
.source "EGLRender.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static final a:Ljava/lang/String; = "EncodeDecodeSurface"

.field private static final b:Z = false

.field private static final t:Ljava/lang/Object;


# instance fields
.field private c:Lcom/neu/ssp/mirror/screencap/glec/STextureRender;

.field private d:Landroid/graphics/SurfaceTexture;

.field private e:Landroid/opengl/EGLDisplay;

.field private f:Landroid/opengl/EGLContext;

.field private g:Landroid/opengl/EGLContext;

.field private h:Landroid/opengl/EGLSurface;

.field private i:Landroid/opengl/EGLSurface;

.field private j:Landroid/view/Surface;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Lcom/neu/ssp/mirror/screencap/glec/EGLRender$onFrameCallBack;

.field private q:Landroid/opengl/EGLConfig;

.field private r:Ljava/util/Timer;

.field private s:Ljava/util/TimerTask;

.field private u:Ljava/util/concurrent/locks/Lock;

.field private v:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;IIILcom/neu/ssp/mirror/screencap/glec/EGLRender$onFrameCallBack;)V
    .locals 33

    move-object/from16 v1, p0

    move/from16 v0, p4

    move-object/from16 v2, p5

    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v3, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    .line 36
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v3, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->f:Landroid/opengl/EGLContext;

    .line 37
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v3, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->g:Landroid/opengl/EGLContext;

    .line 38
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v3, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->h:Landroid/opengl/EGLSurface;

    .line 39
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v3, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->i:Landroid/opengl/EGLSurface;

    const/4 v3, 0x1

    .line 47
    iput-boolean v3, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->o:Z

    const/4 v4, 0x0

    .line 49
    iput-object v4, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->q:Landroid/opengl/EGLConfig;

    .line 54
    iput-object v4, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->r:Ljava/util/Timer;

    .line 55
    iput-object v4, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->s:Ljava/util/TimerTask;

    .line 58
    new-instance v5, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v5}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v5, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->u:Ljava/util/concurrent/locks/Lock;

    const-wide/16 v5, 0x1

    .line 265
    iput-wide v5, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->v:J

    move/from16 v5, p2

    .line 68
    iput v5, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->k:I

    move/from16 v5, p3

    .line 69
    iput v5, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->l:I

    .line 70
    iput-object v2, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->p:Lcom/neu/ssp/mirror/screencap/glec/EGLRender$onFrameCallBack;

    if-lez v0, :cond_0

    .line 1086
    :try_start_0
    iput v0, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->m:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x78

    .line 1088
    iput v0, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->m:I

    :goto_0
    const/16 v0, 0x3e8

    .line 1090
    iget v5, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->m:I

    div-int/2addr v0, v5

    iput v0, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->n:I

    const-string v0, "textwang"

    .line 1091
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "video_interval:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->n:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",fps:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->m:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1098
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v5

    iput-object v5, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    .line 1099
    iget-object v5, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v5, v6, :cond_9

    const/4 v5, 0x2

    new-array v6, v5, [I

    .line 1103
    iget-object v7, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    invoke-static {v7, v6, v0, v6, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0xd

    new-array v8, v6, [I

    const/16 v15, 0x3024

    aput v15, v8, v0

    const/16 v16, 0x8

    aput v16, v8, v3

    const/16 v17, 0x3023

    aput v17, v8, v5

    const/4 v14, 0x3

    aput v16, v8, v14

    const/16 v18, 0x3022

    const/16 v19, 0x4

    aput v18, v8, v19

    const/4 v13, 0x5

    aput v16, v8, v13

    const/16 v20, 0x3021

    const/16 v21, 0x6

    aput v20, v8, v21

    const/4 v7, 0x7

    aput v16, v8, v7

    const/16 v7, 0x3040

    aput v7, v8, v16

    const/16 v7, 0x9

    aput v19, v8, v7

    const/16 v7, 0xa

    const/16 v9, 0x3033

    aput v9, v8, v7

    const/16 v7, 0xb

    aput v3, v8, v7

    const/16 v7, 0xc

    const/16 v22, 0x3038

    aput v22, v8, v7

    new-array v12, v3, [Landroid/opengl/EGLConfig;

    new-array v11, v3, [I

    .line 1120
    iget-object v7, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    const/4 v9, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object v10, v12

    move-object/from16 v26, v11

    move/from16 v11, v23

    move-object/from16 v23, v12

    move/from16 v12, v24

    const/4 v4, 0x5

    move-object/from16 v13, v26

    const/4 v4, 0x3

    move/from16 v14, v25

    invoke-static/range {v7 .. v14}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v7

    if-eqz v7, :cond_7

    new-array v6, v6, [I

    aput v15, v6, v0

    aput v16, v6, v3

    aput v17, v6, v5

    aput v16, v6, v4

    aput v18, v6, v19

    const/4 v7, 0x5

    aput v16, v6, v7

    aput v20, v6, v21

    const/4 v7, 0x7

    aput v16, v6, v7

    const/16 v7, 0x3040

    aput v7, v6, v16

    const/16 v7, 0x9

    aput v19, v6, v7

    const/16 v7, 0xa

    aput v22, v6, v7

    const/16 v7, 0xb

    aput v0, v6, v7

    const/16 v7, 0xc

    aput v22, v6, v7

    new-array v7, v3, [Landroid/opengl/EGLConfig;

    new-array v8, v3, [I

    .line 1218
    iget-object v9, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x1

    const/16 v32, 0x0

    move-object/from16 v25, v9

    move-object/from16 v26, v6

    move-object/from16 v28, v7

    move-object/from16 v31, v8

    invoke-static/range {v25 .. v32}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1220
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "unable to find RGB8888 / "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " EGLConfig"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->w(Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_1

    .line 1223
    :cond_1
    aget-object v6, v7, v0

    :goto_1
    new-array v7, v4, [I

    const/16 v8, 0x3098

    aput v8, v7, v0

    aput v5, v7, v3

    aput v22, v7, v5

    .line 1132
    iget-object v8, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    aget-object v9, v23, v0

    sget-object v10, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v8, v9, v10, v7, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v8

    iput-object v8, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->f:Landroid/opengl/EGLContext;

    .line 1134
    invoke-static {}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->c()V

    .line 1135
    iget-object v8, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->f:Landroid/opengl/EGLContext;

    if-eqz v8, :cond_6

    .line 1139
    iget-object v8, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    iget-object v9, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->f:Landroid/opengl/EGLContext;

    invoke-static {v8, v6, v9, v7, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v7

    iput-object v7, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->g:Landroid/opengl/EGLContext;

    .line 1141
    invoke-static {}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->c()V

    .line 1142
    iget-object v7, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->g:Landroid/opengl/EGLContext;

    if-eqz v7, :cond_5

    const/4 v7, 0x5

    new-array v7, v7, [I

    const/16 v8, 0x3057

    aput v8, v7, v0

    .line 1147
    iget v8, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->k:I

    aput v8, v7, v3

    const/16 v8, 0x3056

    aput v8, v7, v5

    iget v5, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->l:I

    aput v5, v7, v4

    aput v22, v7, v19

    .line 1152
    iget-object v4, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    aget-object v5, v23, v0

    invoke-static {v4, v5, v7, v0}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v4

    iput-object v4, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->h:Landroid/opengl/EGLSurface;

    .line 1154
    invoke-static {}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->c()V

    .line 1155
    iget-object v4, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->h:Landroid/opengl/EGLSurface;

    if-eqz v4, :cond_4

    new-array v3, v3, [I

    aput v22, v3, v0

    .line 1162
    iget-object v4, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    move-object/from16 v5, p1

    invoke-static {v4, v6, v5, v3, v0}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->i:Landroid/opengl/EGLSurface;

    .line 1164
    invoke-static {}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->c()V

    .line 1165
    iget-object v0, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->i:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_3

    .line 2174
    iget-object v0, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    iget-object v3, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->h:Landroid/opengl/EGLSurface;

    iget-object v4, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->h:Landroid/opengl/EGLSurface;

    iget-object v5, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->f:Landroid/opengl/EGLContext;

    invoke-static {v0, v3, v4, v5}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2183
    new-instance v0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;

    invoke-direct {v0}, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;-><init>()V

    iput-object v0, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->c:Lcom/neu/ssp/mirror/screencap/glec/STextureRender;

    .line 2184
    iget-object v0, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->c:Lcom/neu/ssp/mirror/screencap/glec/STextureRender;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->b()V

    .line 2187
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v3, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->c:Lcom/neu/ssp/mirror/screencap/glec/STextureRender;

    invoke-virtual {v3}, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->a()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->d:Landroid/graphics/SurfaceTexture;

    .line 2188
    iget-object v0, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->d:Landroid/graphics/SurfaceTexture;

    iget v3, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->k:I

    iget v4, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->l:I

    invoke-virtual {v0, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 2189
    iget-object v0, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->d:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 2190
    new-instance v0, Landroid/view/Surface;

    iget-object v3, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->d:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->j:Landroid/view/Surface;

    return-void

    .line 2175
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "eglMakeCurrent failed"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1166
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "surface was null"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1156
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "surface was null"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1143
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "null context2"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1136
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "null context"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1122
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v0, v4

    .line 1104
    iput-object v0, v1, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    .line 1105
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "unable to initialize EGL14"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1100
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "unable to get EGL14 display"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v2, :cond_a

    .line 79
    invoke-interface/range {p5 .. p5}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender$onFrameCallBack;->onEglRenderError()V

    :cond_a
    return-void
.end method

.method static synthetic a(Lcom/neu/ssp/mirror/screencap/glec/EGLRender;J)J
    .locals 2

    const-wide/32 v0, 0x3b9aca00

    mul-long p1, p1, v0

    .line 3274
    iget p0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->m:I

    int-to-long v0, p0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private a()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->h:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->f:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 86
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->m:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x78

    .line 88
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->m:I

    :goto_0
    const/16 p1, 0x3e8

    .line 90
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->m:I

    div-int/2addr p1, v0

    iput p1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->n:I

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "video_interval:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->n:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",fps:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->m:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "textwang"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(J)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->i:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 249
    invoke-static {}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->c()V

    return-void
.end method

.method private a(Landroid/view/Surface;)V
    .locals 13

    const/4 v0, 0x0

    .line 98
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    .line 99
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_6

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 103
    iget-object v3, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    const/4 v4, 0x1

    invoke-static {v3, v2, v0, v2, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0xd

    new-array v6, v2, [I

    .line 109
    fill-array-data v6, :array_0

    new-array v2, v4, [Landroid/opengl/EGLConfig;

    new-array v11, v4, [I

    .line 120
    iget-object v5, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-object v8, v2

    invoke-static/range {v5 .. v12}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 125
    invoke-direct {p0, v1}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->b(I)Landroid/opengl/EGLConfig;

    move-result-object v3

    const/4 v5, 0x3

    new-array v6, v5, [I

    .line 128
    fill-array-data v6, :array_1

    .line 132
    iget-object v7, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    aget-object v8, v2, v0

    sget-object v9, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v7, v8, v9, v6, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v7

    iput-object v7, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->f:Landroid/opengl/EGLContext;

    .line 134
    invoke-static {}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->c()V

    .line 135
    iget-object v7, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->f:Landroid/opengl/EGLContext;

    if-eqz v7, :cond_3

    .line 139
    iget-object v8, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    invoke-static {v8, v3, v7, v6, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v6

    iput-object v6, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->g:Landroid/opengl/EGLContext;

    .line 141
    invoke-static {}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->c()V

    .line 142
    iget-object v6, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->g:Landroid/opengl/EGLContext;

    if-eqz v6, :cond_2

    const/4 v6, 0x5

    new-array v6, v6, [I

    const/16 v7, 0x3057

    aput v7, v6, v0

    .line 147
    iget v7, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->k:I

    aput v7, v6, v4

    const/16 v7, 0x3056

    aput v7, v6, v1

    iget v1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->l:I

    aput v1, v6, v5

    const/4 v1, 0x4

    const/16 v5, 0x3038

    aput v5, v6, v1

    .line 152
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    aget-object v2, v2, v0

    invoke-static {v1, v2, v6, v0}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->h:Landroid/opengl/EGLSurface;

    .line 154
    invoke-static {}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->c()V

    .line 155
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->h:Landroid/opengl/EGLSurface;

    const-string v2, "surface was null"

    if-eqz v1, :cond_1

    new-array v1, v4, [I

    aput v5, v1, v0

    .line 162
    iget-object v4, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    invoke-static {v4, v3, p1, v1, v0}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->i:Landroid/opengl/EGLSurface;

    .line 164
    invoke-static {}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->c()V

    .line 165
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->i:Landroid/opengl/EGLSurface;

    if-eqz p1, :cond_0

    return-void

    .line 166
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 156
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 143
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "null context2"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 136
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "null context"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unable to find RGB888+recordable ES2 EGL config"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/4 p1, 0x0

    .line 104
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    .line 105
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unable to initialize EGL14"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unable to get EGL14 display"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3033
        0x1
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method static synthetic a(Lcom/neu/ssp/mirror/screencap/glec/EGLRender;)V
    .locals 1

    .line 2253
    iget-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2254
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->o:Z

    .line 2255
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->d:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/neu/ssp/mirror/screencap/glec/EGLRender;I)V
    .locals 1

    .line 2240
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->i:Landroid/opengl/EGLSurface;

    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->g:Landroid/opengl/EGLContext;

    invoke-static {p1, v0, v0, p0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 2241
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "eglMakeCurrent failed index == 1"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private b(J)J
    .locals 2

    const-wide/32 v0, 0x3b9aca00

    mul-long p1, p1, v0

    .line 274
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->m:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private b(I)Landroid/opengl/EGLConfig;
    .locals 9

    const/16 p1, 0xd

    new-array v1, p1, [I

    .line 207
    fill-array-data v1, :array_0

    const/4 p1, 0x1

    new-array v8, p1, [Landroid/opengl/EGLConfig;

    new-array v6, p1, [I

    .line 218
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v3, v8

    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result p1

    if-nez p1, :cond_0

    .line 220
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "unable to find RGB8888 / "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " EGLConfig"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->w(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 223
    aget-object p1, v8, p1

    return-object p1

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3038
        0x0
        0x3038
    .end array-data
.end method

.method private b()V
    .locals 3

    .line 183
    new-instance v0, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;

    invoke-direct {v0}, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;-><init>()V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->c:Lcom/neu/ssp/mirror/screencap/glec/STextureRender;

    .line 184
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->c:Lcom/neu/ssp/mirror/screencap/glec/STextureRender;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->b()V

    .line 187
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->c:Lcom/neu/ssp/mirror/screencap/glec/STextureRender;

    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->a()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->d:Landroid/graphics/SurfaceTexture;

    .line 188
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->d:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->k:I

    iget v2, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 189
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->d:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 190
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->d:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->j:Landroid/view/Surface;

    return-void
.end method

.method static synthetic b(Lcom/neu/ssp/mirror/screencap/glec/EGLRender;)V
    .locals 0

    .line 2278
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->c:Lcom/neu/ssp/mirror/screencap/glec/STextureRender;

    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->d()V

    return-void
.end method

.method static synthetic b(Lcom/neu/ssp/mirror/screencap/glec/EGLRender;J)V
    .locals 1

    .line 4248
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->i:Landroid/opengl/EGLSurface;

    invoke-static {v0, p0, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 4249
    invoke-static {}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->c()V

    return-void
.end method

.method static synthetic c(Lcom/neu/ssp/mirror/screencap/glec/EGLRender;)Lcom/neu/ssp/mirror/screencap/glec/EGLRender$onFrameCallBack;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->p:Lcom/neu/ssp/mirror/screencap/glec/EGLRender$onFrameCallBack;

    return-object p0
.end method

.method private static c()V
    .locals 3

    .line 228
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ->>>>>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 2

    if-nez p1, :cond_1

    .line 236
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->h:Landroid/opengl/EGLSurface;

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->f:Landroid/opengl/EGLContext;

    invoke-static {p1, v0, v0, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "eglMakeCurrent failed index == 0"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 240
    :cond_1
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->i:Landroid/opengl/EGLSurface;

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->g:Landroid/opengl/EGLContext;

    invoke-static {p1, v0, v0, v1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    return-void

    .line 241
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "eglMakeCurrent failed index == 1"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic d(Lcom/neu/ssp/mirror/screencap/glec/EGLRender;)J
    .locals 4

    .line 28
    iget-wide v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->v:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->v:J

    return-wide v0
.end method

.method private d()V
    .locals 1

    .line 253
    iget-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->o:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 254
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->o:Z

    .line 255
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->d:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    :cond_0
    return-void
.end method

.method private e()Z
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->i:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    .line 261
    invoke-static {}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->c()V

    return v0
.end method

.method static synthetic e(Lcom/neu/ssp/mirror/screencap/glec/EGLRender;)Z
    .locals 1

    .line 4260
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->i:Landroid/opengl/EGLSurface;

    invoke-static {v0, p0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result p0

    .line 4261
    invoke-static {}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->c()V

    return p0
.end method

.method private f()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->c:Lcom/neu/ssp/mirror/screencap/glec/STextureRender;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->d()V

    return-void
.end method


# virtual methods
.method public getDecodeSurface()Landroid/view/Surface;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->j:Landroid/view/Surface;

    return-object v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const/4 p1, 0x1

    .line 269
    iput-boolean p1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->o:Z

    return-void
.end method

.method public release()V
    .locals 3

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->u:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 348
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 351
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->h:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 352
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->i:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 353
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->f:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 354
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->g:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 355
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 356
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 357
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e:Landroid/opengl/EGLDisplay;

    .line 358
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->f:Landroid/opengl/EGLContext;

    .line 359
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->g:Landroid/opengl/EGLContext;

    .line 360
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->h:Landroid/opengl/EGLSurface;

    .line 361
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->i:Landroid/opengl/EGLSurface;

    .line 362
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->d:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->d:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 364
    iput-object v1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->d:Landroid/graphics/SurfaceTexture;

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->c:Lcom/neu/ssp/mirror/screencap/glec/STextureRender;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->c:Lcom/neu/ssp/mirror/screencap/glec/STextureRender;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/glec/STextureRender;->c()V

    .line 368
    iput-object v1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->c:Lcom/neu/ssp/mirror/screencap/glec/STextureRender;

    .line 370
    :cond_1
    iput-object v1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->q:Landroid/opengl/EGLConfig;

    .line 371
    iput-object v1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->p:Lcom/neu/ssp/mirror/screencap/glec/EGLRender$onFrameCallBack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    :catch_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->u:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->u:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public start()V
    .locals 8

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->u:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 287
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->r:Ljava/util/Timer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->s:Ljava/util/TimerTask;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->r:Ljava/util/Timer;

    .line 289
    new-instance v0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender$1;

    invoke-direct {v0, p0}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender$1;-><init>(Lcom/neu/ssp/mirror/screencap/glec/EGLRender;)V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->s:Ljava/util/TimerTask;

    const-string v0, "textwang"

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start 11111 video_interval:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->r:Ljava/util/Timer;

    iget-object v3, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->s:Ljava/util/TimerTask;

    const-wide/16 v4, 0x0

    iget v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->n:I

    int-to-long v6, v0

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->u:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->u:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public stop()V
    .locals 2

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->u:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const-string v0, "EGLRender stop"

    .line 327
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->s:Ljava/util/TimerTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->s:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 330
    iput-object v1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->s:Ljava/util/TimerTask;

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->r:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->r:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 335
    iput-object v1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->r:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :catch_0
    :cond_1
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->u:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->u:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
