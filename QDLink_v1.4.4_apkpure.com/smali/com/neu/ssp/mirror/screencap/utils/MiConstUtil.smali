.class public Lcom/neu/ssp/mirror/screencap/utils/MiConstUtil;
.super Ljava/lang/Object;
.source "MiConstUtil.java"


# static fields
.field public static final EVENT_CLIENT_SERVERSOCKET_CLOSED:Ljava/lang/String; = "client.server.socket.closed"

.field public static final EVENT_CONNECTED:Ljava/lang/String; = "com.neu.ssp.mirror.client.CONNECTED"

.field public static final EVENT_CONNECTIVITY_CHANGE:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final EVENT_DISCONNECTED:Ljava/lang/String; = "com.neu.ssp.mirror.client.DISCONNECTED"

.field public static final EVENT_MIRROR_DEVICE_DISCONNECTED:Ljava/lang/String; = "mirror.device_disconnected"

.field public static final EVENT_MIRROR_PAUSED:Ljava/lang/String; = "event.mirror.paused"

.field public static final EVENT_MIRROR_REPLAY:Ljava/lang/String; = "event.mirror.replay"

.field public static final EVENT_PREPARE_MIRROR:Ljava/lang/String; = "EVENT.PREPARE.MIRROR"

.field public static final EVENT_PREPARE_MIRROR_SOCKET:Ljava/lang/String; = "EVENT.PREPARE.MIRROR.SOCKET"

.field public static final EVENT_PREPARE_VIRTUAL_DISPLAY:Ljava/lang/String; = "com.neu.ssp.mirror.client.PREPARE_VIRTUAL_DISPLAY"

.field public static final EVENT_RECEIVE_MIRROR_HEADER:Ljava/lang/String; = "com.neu.ssp.mirror.server.MIRROR_HEADER"

.field public static final EVENT_REDRAW_FLOAT_VIEW:Ljava/lang/String; = "com.neu.ssp.mirror.client.REDRAW_FLOAT_VIEW"

.field public static final EVENT_RELEASE_VIRTUAL_DISPLAY:Ljava/lang/String; = "com.neu.ssp.mirror.client.RELEASE_VIRTUAL_DISPLAY"

.field public static final EVENT_SCREEN_CAPTURE_ACT_RES_CODE:I = 0x7b

.field public static final EVENT_START_MIRROR:Ljava/lang/String; = "com.neu.ssp.mirror.client.START_MIRROR"

.field public static final EVENT_START_MIRROR_FROM_CAR:Ljava/lang/String; = "com.neu.ssp.mirror.client.START_MIRROR_FROM_CAR"

.field public static final EVENT_STOP_MIRROR:Ljava/lang/String; = "com.neu.ssp.mirror.client.STOP_MIRROR"

.field public static final EXTRA_DATA_CLIENT_BITRATE:Ljava/lang/String; = "CLIENT_BITRATE"

.field public static final EXTRA_DATA_CLIENT_FRAME_BIT:Ljava/lang/String; = "CLIENT_FRAME_BIT"

.field public static final EXTRA_DATA_CLIENT_FRAME_INTERVAL:Ljava/lang/String; = "CLIENT_FRAME_INTERVAL"

.field public static final EXTRA_DATA_CLIENT_FRAME_RATE:Ljava/lang/String; = "CLIENT_FRAME_RATE"

.field public static final EXTRA_DATA_CLIENT_HEIGHT:Ljava/lang/String; = "CLIENT_HEIGHT"

.field public static final EXTRA_DATA_CLIENT_PRESENTATION_TYPE:Ljava/lang/String; = "CLIENT_PRESENTATION_TYPE"

.field public static final EXTRA_DATA_CLIENT_SCREEN_CAP_TYPE:Ljava/lang/String; = "CLIENT_SCREEN_CAP_TYPE"

.field public static final EXTRA_DATA_CLIENT_WIDTH:Ljava/lang/String; = "CLIENT_WIDTH"

.field public static final STEP_LENGTH:I = 0x200

.field public static final STEP_LENGTH48:I = 0x30

.field public static final STEP_LENGTH512:I = 0x200

.field public static VALUE_APP_PORTAIT_OR_LANDSCAPE:I = 0x0

.field public static final VALUE_SCREEN_CAP_PRESENTATION_TYPE_OFF:I = 0xf0012

.field public static final VALUE_SCREEN_CAP_PRESENTATION_TYPE_ON:I = 0xf0011

.field public static final VALUE_SCREEN_CAP_TYPE_H264:I = 0xf0001

.field public static final VALUE_SCREEN_CAP_TYPE_JPEG:I = 0xf0003

.field public static final VALUE_SCREEN_CAP_TYPE_RGB565:I = 0xf0002

.field public static final VALUE_SCREEN_ORIENTATION_LANDSCAPE:I = 0x1

.field public static final VALUE_SCREEN_ORIENTATION_PORTRAIT:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
