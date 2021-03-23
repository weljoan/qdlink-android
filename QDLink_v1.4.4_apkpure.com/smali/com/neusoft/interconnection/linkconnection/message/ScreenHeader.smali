.class public Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;
.super Ljava/lang/Object;
.source "ScreenHeader.java"


# instance fields
.field private a:[B

.field public action:I

.field public commonHeaderSize:I

.field public dataType:I

.field public format:[C

.field public headersize:I

.field public heightPixels:I

.field public mCaptureBitRate:I

.field public mCaptureFrameInterval:I

.field public mCaptureFrameRate:I

.field public mCaptureHeight:I

.field public mCaptureWidth:I

.field public mEncodingType:I

.field public mPixelFormat:I

.field public mPixelSize:I

.field public mScreenDirect:I

.field public mScreenOrientation:I

.field public mark:[B

.field public oCaptureBitRate:I

.field public oCaptureDataSize:I

.field public oCaptureDisplayCount:I

.field public oCaptureEncodingType:I

.field public oCaptureFrameInterval:I

.field public oCaptureFrameRate:I

.field public oCaptureHeight:I

.field public oCaptureHeight0:I

.field public oCaptureHeight1:I

.field public oCaptureHeight2:I

.field public oCaptureHeight3:I

.field public oCapturePixelFormat:I

.field public oCapturePixelSize:I

.field public oCaptureWidth:I

.field public oCaptureWidth0:I

.field public oCaptureWidth1:I

.field public oCaptureWidth2:I

.field public oCaptureWidth3:I

.field public oInOutApp:I

.field public oNo:I

.field public oScreenDirect:I

.field public oScreenHeight:I

.field public oScreenOrientation:I

.field public oScreenPixelFormat:I

.field public oScreenPixelSize:I

.field public oScreenWidth:I

.field public requestHeaderSize:I

.field public responseHeaderSize:I

.field public totalsize:I

.field public value1080:I

.field public value1088:I

.field public value1339:I

.field public value1440:I

.field public value1480:I

.field public value2008:I

.field public value2220:I

.field public value2678:I

.field public value2960:I

.field public value720:I

.field public widthPixels:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 11
    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->format:[C

    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 19
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mark:[B

    const/16 v1, 0x53b

    .line 61
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value1339:I

    const/16 v1, 0x2d0

    .line 62
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value720:I

    const/16 v1, 0x5c8

    .line 63
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value1480:I

    const/16 v1, 0x7d8

    .line 64
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value2008:I

    const/16 v1, 0x438

    .line 65
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value1080:I

    const/16 v1, 0x8ac

    .line 66
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value2220:I

    const/16 v1, 0x440

    .line 67
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value1088:I

    const/16 v1, 0xa76

    .line 68
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value2678:I

    const/16 v1, 0x5a0

    .line 69
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value1440:I

    const/16 v1, 0xb90

    .line 70
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value2960:I

    .line 76
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->format:[C

    const/4 v2, 0x0

    const/16 v3, 0x21

    aput-char v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x42

    .line 77
    aput-char v3, v1, v2

    const/4 v3, 0x2

    const/16 v4, 0x49

    .line 78
    aput-char v4, v1, v3

    const/4 v3, 0x3

    const/16 v4, 0x4e

    .line 79
    aput-char v4, v1, v3

    .line 80
    iput v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->dataType:I

    const/16 v1, 0x40

    .line 81
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->commonHeaderSize:I

    const/16 v1, 0x1c

    .line 82
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->requestHeaderSize:I

    const/16 v1, 0x58

    .line 83
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->responseHeaderSize:I

    const/16 v1, 0x200

    .line 84
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->headersize:I

    .line 85
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->headersize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    new-array v0, v0, [B

    .line 86
    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mark:[B

    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x200

    if-ge v1, v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->format:[C

    aget-char v3, v2, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    const/4 v3, 0x1

    .line 94
    aget-char v4, v2, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/4 v3, 0x2

    .line 95
    aget-char v4, v2, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/4 v3, 0x3

    .line 96
    aget-char v2, v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 98
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->dataType:I

    const/4 v3, 0x4

    invoke-static {v2, v1, v3}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 99
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->totalsize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 100
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->headersize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 101
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->commonHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 102
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->requestHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 103
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->responseHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 104
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->action:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    :goto_1
    const/16 v2, 0x20

    if-ge v0, v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    add-int v3, v1, v0

    iget-object v4, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mark:[B

    aget-byte v4, v4, v0

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v2

    .line 109
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureWidth:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v0, v2, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 110
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureHeight:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 111
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mPixelFormat:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 112
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mPixelSize:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 113
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mEncodingType:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 114
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mScreenOrientation:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 115
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mScreenDirect:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 117
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureDataSize:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 118
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oNo:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 119
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenWidth:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 120
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenHeight:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 121
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenPixelFormat:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 122
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenPixelSize:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 123
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureWidth:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 124
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureHeight:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 125
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCapturePixelFormat:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 126
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCapturePixelSize:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 127
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureEncodingType:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 128
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenOrientation:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 129
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenDirect:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 131
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureDisplayCount:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 132
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureWidth0:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 133
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureHeight0:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 134
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureWidth1:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 135
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureHeight1:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 136
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureWidth2:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 137
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureHeight2:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 138
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureWidth3:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 139
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureHeight3:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 141
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureFrameRate:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 142
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureBitRate:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 143
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureFrameInterval:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 144
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureFrameRate:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 145
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureBitRate:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 146
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureFrameInterval:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 147
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oInOutApp:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    .line 149
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    return-object v0
.end method

.method public getEncodingType()I
    .locals 1

    .line 272
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mEncodingType:I

    return v0
.end method

.method public setValueByBuffer([B)V
    .locals 3

    const/4 v0, 0x4

    .line 156
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->dataType:I

    const/16 v0, 0x8

    .line 158
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->totalsize:I

    const/16 v0, 0xc

    .line 160
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->headersize:I

    const/16 v0, 0x10

    .line 162
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->commonHeaderSize:I

    const/16 v0, 0x14

    .line 164
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->requestHeaderSize:I

    const/16 v0, 0x18

    .line 166
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->responseHeaderSize:I

    const/16 v0, 0x1c

    .line 168
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->action:I

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mark:[B

    add-int/lit8 v2, v0, 0x20

    aget-byte v2, p1, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    .line 175
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureWidth:I

    const/16 v0, 0x44

    .line 177
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureHeight:I

    const/16 v0, 0x48

    .line 179
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mPixelFormat:I

    const/16 v0, 0x4c

    .line 181
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mPixelSize:I

    const/16 v0, 0x50

    .line 183
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mEncodingType:I

    const/16 v0, 0x54

    .line 185
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mScreenOrientation:I

    const/16 v0, 0x58

    .line 187
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mScreenDirect:I

    const/16 v0, 0x5c

    .line 190
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureDataSize:I

    const/16 v0, 0x60

    .line 192
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oNo:I

    .line 194
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->widthPixels:I

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenWidth:I

    .line 196
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->heightPixels:I

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenHeight:I

    .line 198
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value1339:I

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenWidth:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value720:I

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenHeight:I

    if-ne v0, v1, :cond_1

    .line 199
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value1480:I

    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenWidth:I

    .line 200
    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenHeight:I

    goto :goto_1

    .line 201
    :cond_1
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value720:I

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenWidth:I

    if-ne v0, v1, :cond_2

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value1339:I

    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenHeight:I

    if-ne v1, v2, :cond_2

    .line 202
    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenWidth:I

    .line 203
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value1480:I

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenHeight:I

    goto :goto_1

    .line 204
    :cond_2
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value2008:I

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenWidth:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value1080:I

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenHeight:I

    if-ne v0, v1, :cond_3

    .line 205
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value2220:I

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenWidth:I

    .line 206
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value1088:I

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenHeight:I

    goto :goto_1

    .line 207
    :cond_3
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value1080:I

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenWidth:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value2008:I

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenHeight:I

    if-ne v0, v1, :cond_4

    .line 208
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value1088:I

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenWidth:I

    .line 209
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value2220:I

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenHeight:I

    goto :goto_1

    .line 210
    :cond_4
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value2678:I

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenWidth:I

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value1440:I

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenHeight:I

    if-ne v0, v1, :cond_5

    .line 211
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value2960:I

    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenWidth:I

    .line 212
    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenHeight:I

    goto :goto_1

    .line 213
    :cond_5
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value1440:I

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenWidth:I

    if-ne v0, v1, :cond_6

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value2678:I

    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenHeight:I

    if-ne v1, v2, :cond_6

    .line 214
    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenWidth:I

    .line 215
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->value2960:I

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenHeight:I

    :cond_6
    :goto_1
    const/16 v0, 0x6c

    .line 219
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenPixelFormat:I

    const/16 v0, 0x70

    .line 221
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenPixelSize:I

    const/16 v0, 0x74

    .line 223
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureWidth:I

    const/16 v0, 0x78

    .line 225
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureHeight:I

    const/16 v0, 0x7c

    .line 227
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCapturePixelFormat:I

    const/16 v0, 0x80

    .line 229
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCapturePixelSize:I

    const/16 v0, 0x84

    .line 231
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureEncodingType:I

    const/16 v0, 0x88

    .line 233
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenOrientation:I

    const/16 v0, 0x8c

    .line 235
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenDirect:I

    const/16 v0, 0x90

    .line 238
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureDisplayCount:I

    const/16 v0, 0x94

    .line 240
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureWidth0:I

    const/16 v0, 0x98

    .line 242
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureHeight0:I

    const/16 v0, 0x9c

    .line 244
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureWidth1:I

    const/16 v0, 0xa0

    .line 246
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureHeight1:I

    const/16 v0, 0xa4

    .line 248
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureWidth2:I

    const/16 v0, 0xa8

    .line 250
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureHeight2:I

    const/16 v0, 0xac

    .line 252
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureWidth3:I

    const/16 v0, 0xb0

    .line 254
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureHeight3:I

    const/16 v0, 0xb4

    .line 257
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureFrameRate:I

    const/16 v0, 0xb8

    .line 259
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureBitRate:I

    const/16 v0, 0xbc

    .line 261
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureFrameInterval:I

    const/16 v0, 0xc0

    .line 263
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureFrameRate:I

    const/16 v0, 0xc4

    .line 265
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureBitRate:I

    const/16 v0, 0xc8

    .line 267
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result p1

    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureFrameInterval:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScreenHeader [format="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->format:[C

    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dataType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->dataType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalsize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->totalsize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", headersize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->headersize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", commonHeaderSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->commonHeaderSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestHeaderSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->requestHeaderSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", responseHeaderSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->responseHeaderSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mark:[B

    .line 282
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCaptureWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCaptureHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPixelFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mPixelFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPixelSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mPixelSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEncodingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mEncodingType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mScreenOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenDirect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mScreenDirect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", widthPixels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->widthPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", heightPixels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->heightPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oCaptureDataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureDataSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oNo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oScreenWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oScreenHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oScreenPixelFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenPixelFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oScreenPixelSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenPixelSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oCaptureWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oCaptureHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oCapturePixelFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCapturePixelFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oCapturePixelSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCapturePixelSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oCaptureEncodingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureEncodingType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oScreenOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oScreenDirect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenDirect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", buffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->a:[B

    .line 299
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
