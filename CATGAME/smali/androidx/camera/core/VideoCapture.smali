.class public Landroidx/camera/core/VideoCapture;
.super Landroidx/camera/core/UseCase;
.source "VideoCapture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/core/VideoCapture$Builder;,
        Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;,
        Landroidx/camera/core/VideoCapture$Metadata;,
        Landroidx/camera/core/VideoCapture$Defaults;,
        Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;,
        Landroidx/camera/core/VideoCapture$VideoCaptureError;
    }
.end annotation


# static fields
.field private static final AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/mp4a-latm"

.field private static final CamcorderQuality:[I

.field public static final DEFAULT_CONFIG:Landroidx/camera/core/VideoCapture$Defaults;

.field private static final DEQUE_TIMEOUT_USEC:I = 0x2710

.field private static final EMPTY_METADATA:Landroidx/camera/core/VideoCapture$Metadata;

.field public static final ERROR_ENCODER:I = 0x1

.field public static final ERROR_MUXER:I = 0x2

.field public static final ERROR_RECORDING_IN_PROGRESS:I = 0x3

.field public static final ERROR_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VideoCapture"

.field private static final VIDEO_MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final sAudioEncoding:[S


# instance fields
.field private mAudioBitRate:I

.field private final mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mAudioBufferSize:I

.field private mAudioChannelCount:I

.field private mAudioEncoder:Landroid/media/MediaCodec;

.field private final mAudioHandler:Landroid/os/Handler;

.field private final mAudioHandlerThread:Landroid/os/HandlerThread;

.field private mAudioRecorder:Landroid/media/AudioRecord;

.field private mAudioSampleRate:I

.field private mAudioTrackIndex:I

.field mCameraSurface:Landroid/view/Surface;

.field private mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

.field private final mEndOfAudioStreamSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mEndOfAudioVideoSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mEndOfVideoStreamSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsFirstAudioSampleWrite:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsFirstVideoSampleWrite:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsRecording:Z

.field private mMuxer:Landroid/media/MediaMuxer;

.field private final mMuxerLock:Ljava/lang/Object;

.field private mMuxerStarted:Z

.field private final mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field mVideoEncoder:Landroid/media/MediaCodec;

.field private final mVideoHandler:Landroid/os/Handler;

.field private final mVideoHandlerThread:Landroid/os/HandlerThread;

.field private mVideoTrackIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 135
    new-instance v0, Landroidx/camera/core/VideoCapture$Defaults;

    invoke-direct {v0}, Landroidx/camera/core/VideoCapture$Defaults;-><init>()V

    sput-object v0, Landroidx/camera/core/VideoCapture;->DEFAULT_CONFIG:Landroidx/camera/core/VideoCapture$Defaults;

    .line 136
    new-instance v0, Landroidx/camera/core/VideoCapture$Metadata;

    invoke-direct {v0}, Landroidx/camera/core/VideoCapture$Metadata;-><init>()V

    sput-object v0, Landroidx/camera/core/VideoCapture;->EMPTY_METADATA:Landroidx/camera/core/VideoCapture$Metadata;

    .line 144
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/camera/core/VideoCapture;->CamcorderQuality:[I

    .line 155
    const/4 v0, 0x3

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/camera/core/VideoCapture;->sAudioEncoding:[S

    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0x6
        0x5
        0x4
    .end array-data

    :array_1
    .array-data 2
        0x2s
        0x3s
        0x4s
    .end array-data
.end method

.method constructor <init>(Landroidx/camera/core/impl/VideoCaptureConfig;)V
    .locals 2
    .param p1, "config"    # Landroidx/camera/core/impl/VideoCaptureConfig;

    .line 209
    invoke-direct {p0, p1}, Landroidx/camera/core/UseCase;-><init>(Landroidx/camera/core/impl/UseCaseConfig;)V

    .line 160
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 161
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mMuxerLock:Ljava/lang/Object;

    .line 163
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraX-video encoding thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mVideoHandlerThread:Landroid/os/HandlerThread;

    .line 167
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraX-audio encoding thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mAudioHandlerThread:Landroid/os/HandlerThread;

    .line 170
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mEndOfVideoStreamSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 171
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mEndOfAudioStreamSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 172
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mEndOfAudioVideoSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 173
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 175
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mIsFirstVideoSampleWrite:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 176
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mIsFirstAudioSampleWrite:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 185
    iput-boolean v1, p0, Landroidx/camera/core/VideoCapture;->mMuxerStarted:Z

    .line 197
    iput-boolean v1, p0, Landroidx/camera/core/VideoCapture;->mIsRecording:Z

    .line 212
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mVideoHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 213
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mVideoHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mVideoHandler:Landroid/os/Handler;

    .line 216
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mAudioHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 217
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mAudioHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mAudioHandler:Landroid/os/Handler;

    .line 218
    return-void
.end method

.method private autoConfigAudioRecordSource(Landroidx/camera/core/impl/VideoCaptureConfig;)Landroid/media/AudioRecord;
    .locals 17
    .param p1, "config"    # Landroidx/camera/core/impl/VideoCaptureConfig;

    .line 815
    move-object/from16 v1, p0

    const-string v2, "VideoCapture"

    sget-object v3, Landroidx/camera/core/VideoCapture;->sAudioEncoding:[S

    array-length v4, v3

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-short v12, v3, v5

    .line 819
    .local v12, "audioFormat":S
    iget v0, v1, Landroidx/camera/core/VideoCapture;->mAudioChannelCount:I

    const/4 v13, 0x1

    if-ne v0, v13, :cond_0

    .line 820
    const/16 v0, 0x10

    goto :goto_1

    .line 821
    :cond_0
    const/16 v0, 0xc

    :goto_1
    move v14, v0

    .line 822
    .local v14, "channelConfig":I
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/core/impl/VideoCaptureConfig;->getAudioRecordSource()I

    move-result v15

    .line 825
    .local v15, "source":I
    :try_start_0
    iget v0, v1, Landroidx/camera/core/VideoCapture;->mAudioSampleRate:I

    .line 826
    invoke-static {v0, v14, v12}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    .line 828
    .local v0, "bufferSize":I
    if-gtz v0, :cond_1

    .line 829
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/core/impl/VideoCaptureConfig;->getAudioMinBufferSize()I

    move-result v6

    move v0, v6

    .line 832
    :cond_1
    new-instance v16, Landroid/media/AudioRecord;

    iget v8, v1, Landroidx/camera/core/VideoCapture;->mAudioSampleRate:I

    mul-int/lit8 v11, v0, 0x2

    move-object/from16 v6, v16

    move v7, v15

    move v9, v14

    move v10, v12

    invoke-direct/range {v6 .. v11}, Landroid/media/AudioRecord;-><init>(IIIII)V

    move-object/from16 v6, v16

    .line 840
    .local v6, "recorder":Landroid/media/AudioRecord;
    invoke-virtual {v6}, Landroid/media/AudioRecord;->getState()I

    move-result v7

    if-ne v7, v13, :cond_2

    .line 841
    iput v0, v1, Landroidx/camera/core/VideoCapture;->mAudioBufferSize:I

    .line 842
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "source: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " audioSampleRate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Landroidx/camera/core/VideoCapture;->mAudioSampleRate:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " channelConfig: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " audioFormat: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " bufferSize: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    return-object v6

    .line 858
    .end local v0    # "bufferSize":I
    .end local v6    # "recorder":Landroid/media/AudioRecord;
    :cond_2
    goto :goto_2

    .line 856
    :catch_0
    move-exception v0

    .line 857
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "Exception, keep trying."

    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 815
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v12    # "audioFormat":S
    .end local v14    # "channelConfig":I
    .end local v15    # "source":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 861
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private createAudioMediaFormat()Landroid/media/MediaFormat;
    .locals 3

    .line 803
    iget v0, p0, Landroidx/camera/core/VideoCapture;->mAudioSampleRate:I

    iget v1, p0, Landroidx/camera/core/VideoCapture;->mAudioChannelCount:I

    .line 804
    const-string v2, "audio/mp4a-latm"

    invoke-static {v2, v0, v1}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 806
    .local v0, "format":Landroid/media/MediaFormat;
    const-string v1, "aac-profile"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 808
    iget v1, p0, Landroidx/camera/core/VideoCapture;->mAudioBitRate:I

    const-string v2, "bitrate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 810
    return-object v0
.end method

.method private static createMediaFormat(Landroidx/camera/core/impl/VideoCaptureConfig;Landroid/util/Size;)Landroid/media/MediaFormat;
    .locals 3
    .param p0, "config"    # Landroidx/camera/core/impl/VideoCaptureConfig;
    .param p1, "resolution"    # Landroid/util/Size;

    .line 222
    nop

    .line 224
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 223
    const-string/jumbo v2, "video/avc"

    invoke-static {v2, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 225
    .local v0, "format":Landroid/media/MediaFormat;
    const-string v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 226
    invoke-virtual {p0}, Landroidx/camera/core/impl/VideoCaptureConfig;->getBitRate()I

    move-result v1

    const-string v2, "bitrate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 227
    invoke-virtual {p0}, Landroidx/camera/core/impl/VideoCaptureConfig;->getVideoFrameRate()I

    move-result v1

    const-string v2, "frame-rate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 228
    invoke-virtual {p0}, Landroidx/camera/core/impl/VideoCaptureConfig;->getIFrameInterval()I

    move-result v1

    const-string v2, "i-frame-interval"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 230
    return-object v0
.end method

.method private getInputBuffer(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "index"    # I

    .line 794
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private getOutputBuffer(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "index"    # I

    .line 798
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$releaseCameraSurface$0(ZLandroid/media/MediaCodec;)V
    .locals 0
    .param p0, "releaseVideoEncoder"    # Z
    .param p1, "videoEncoder"    # Landroid/media/MediaCodec;

    .line 458
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 459
    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V

    .line 461
    :cond_0
    return-void
.end method

.method private releaseCameraSurface(Z)V
    .locals 4
    .param p1, "releaseVideoEncoder"    # Z

    .line 447
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    if-nez v0, :cond_0

    .line 448
    return-void

    .line 451
    :cond_0
    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    .line 455
    .local v1, "videoEncoder":Landroid/media/MediaCodec;
    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    .line 456
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->getTerminationFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v2, Landroidx/camera/core/-$$Lambda$VideoCapture$vFHGdUhQ9YSrmNYVYvi35pHBmEc;

    invoke-direct {v2, p1, v1}, Landroidx/camera/core/-$$Lambda$VideoCapture$vFHGdUhQ9YSrmNYVYvi35pHBmEc;-><init>(ZLandroid/media/MediaCodec;)V

    .line 461
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    .line 456
    invoke-interface {v0, v2, v3}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 463
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 464
    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    .line 466
    :cond_1
    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mCameraSurface:Landroid/view/Surface;

    .line 467
    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 468
    return-void
.end method

.method private setAudioParametersByCamcorderProfile(Landroid/util/Size;Ljava/lang/String;)V
    .locals 8
    .param p1, "currentResolution"    # Landroid/util/Size;
    .param p2, "cameraId"    # Ljava/lang/String;

    .line 867
    const/4 v0, 0x0

    .line 869
    .local v0, "isCamcorderProfileFound":Z
    sget-object v1, Landroidx/camera/core/VideoCapture;->CamcorderQuality:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    .line 870
    .local v4, "quality":I
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v4}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 871
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v4}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v5

    .line 872
    .local v5, "profile":Landroid/media/CamcorderProfile;
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v6

    iget v7, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-ne v6, v7, :cond_0

    .line 873
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v6

    iget v7, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v6, v7, :cond_0

    .line 874
    iget v1, v5, Landroid/media/CamcorderProfile;->audioChannels:I

    iput v1, p0, Landroidx/camera/core/VideoCapture;->mAudioChannelCount:I

    .line 875
    iget v1, v5, Landroid/media/CamcorderProfile;->audioSampleRate:I

    iput v1, p0, Landroidx/camera/core/VideoCapture;->mAudioSampleRate:I

    .line 876
    iget v1, v5, Landroid/media/CamcorderProfile;->audioBitRate:I

    iput v1, p0, Landroidx/camera/core/VideoCapture;->mAudioBitRate:I

    .line 877
    const/4 v0, 0x1

    .line 878
    goto :goto_1

    .line 869
    .end local v4    # "quality":I
    .end local v5    # "profile":Landroid/media/CamcorderProfile;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 885
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 886
    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/VideoCaptureConfig;

    .line 887
    .local v1, "config":Landroidx/camera/core/impl/VideoCaptureConfig;
    invoke-virtual {v1}, Landroidx/camera/core/impl/VideoCaptureConfig;->getAudioChannelCount()I

    move-result v2

    iput v2, p0, Landroidx/camera/core/VideoCapture;->mAudioChannelCount:I

    .line 888
    invoke-virtual {v1}, Landroidx/camera/core/impl/VideoCaptureConfig;->getAudioSampleRate()I

    move-result v2

    iput v2, p0, Landroidx/camera/core/VideoCapture;->mAudioSampleRate:I

    .line 889
    invoke-virtual {v1}, Landroidx/camera/core/impl/VideoCaptureConfig;->getAudioBitRate()I

    move-result v2

    iput v2, p0, Landroidx/camera/core/VideoCapture;->mAudioBitRate:I

    .line 891
    .end local v1    # "config":Landroidx/camera/core/impl/VideoCaptureConfig;
    :cond_2
    return-void
.end method

.method private writeAudioEncodedBuffer(I)Z
    .locals 7
    .param p1, "bufferIndex"    # I

    .line 603
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-direct {p0, v0, p1}, Landroidx/camera/core/VideoCapture;->getOutputBuffer(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 604
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 605
    iget v1, p0, Landroidx/camera/core/VideoCapture;->mAudioTrackIndex:I

    const/4 v2, 0x1

    if-ltz v1, :cond_1

    iget v1, p0, Landroidx/camera/core/VideoCapture;->mVideoTrackIndex:I

    if-ltz v1, :cond_1

    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v1, :cond_1

    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    .line 610
    :try_start_0
    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mMuxerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    :try_start_1
    iget-object v3, p0, Landroidx/camera/core/VideoCapture;->mIsFirstAudioSampleWrite:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    .line 612
    const-string v3, "VideoCapture"

    const-string v4, "First audio sample written."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v3, p0, Landroidx/camera/core/VideoCapture;->mIsFirstAudioSampleWrite:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 615
    :cond_0
    iget-object v3, p0, Landroidx/camera/core/VideoCapture;->mMuxer:Landroid/media/MediaMuxer;

    iget v4, p0, Landroidx/camera/core/VideoCapture;->mAudioTrackIndex:I

    iget-object v5, p0, Landroidx/camera/core/VideoCapture;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v3, v4, v0, v5}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 616
    monitor-exit v1

    .line 627
    goto :goto_0

    .line 616
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local p1    # "bufferIndex":I
    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 617
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local p1    # "bufferIndex":I
    :catch_0
    move-exception v1

    .line 618
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "VideoCapture"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "audio error:size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroidx/camera/core/VideoCapture;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroidx/camera/core/VideoCapture;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/timeUs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroidx/camera/core/VideoCapture;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v5, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 629
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 630
    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2
.end method

.method private writeVideoEncodedBuffer(I)Z
    .locals 8
    .param p1, "bufferIndex"    # I

    .line 567
    const/4 v0, 0x0

    if-gez p1, :cond_0

    .line 568
    const-string v1, "VideoCapture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Output buffer should not have negative index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    return v0

    .line 572
    :cond_0
    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 575
    .local v1, "outputBuffer":Ljava/nio/ByteBuffer;
    if-nez v1, :cond_1

    .line 576
    const-string v2, "VideoCapture"

    const-string v3, "OutputBuffer was null."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return v0

    .line 581
    :cond_1
    iget v2, p0, Landroidx/camera/core/VideoCapture;->mAudioTrackIndex:I

    const/4 v3, 0x1

    if-ltz v2, :cond_3

    iget v2, p0, Landroidx/camera/core/VideoCapture;->mVideoTrackIndex:I

    if-ltz v2, :cond_3

    iget-object v2, p0, Landroidx/camera/core/VideoCapture;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v2, :cond_3

    .line 582
    iget-object v2, p0, Landroidx/camera/core/VideoCapture;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 583
    iget-object v2, p0, Landroidx/camera/core/VideoCapture;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v4, p0, Landroidx/camera/core/VideoCapture;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 584
    iget-object v2, p0, Landroidx/camera/core/VideoCapture;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 586
    iget-object v2, p0, Landroidx/camera/core/VideoCapture;->mMuxerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 587
    :try_start_0
    iget-object v4, p0, Landroidx/camera/core/VideoCapture;->mIsFirstVideoSampleWrite:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_2

    .line 588
    const-string v4, "VideoCapture"

    const-string v5, "First video sample written."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v4, p0, Landroidx/camera/core/VideoCapture;->mIsFirstVideoSampleWrite:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 591
    :cond_2
    iget-object v4, p0, Landroidx/camera/core/VideoCapture;->mMuxer:Landroid/media/MediaMuxer;

    iget v5, p0, Landroidx/camera/core/VideoCapture;->mVideoTrackIndex:I

    iget-object v6, p0, Landroidx/camera/core/VideoCapture;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v4, v5, v1, v6}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 592
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 596
    :cond_3
    :goto_0
    iget-object v2, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, p1, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 599
    iget-object v2, p0, Landroidx/camera/core/VideoCapture;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    move v0, v3

    :cond_4
    return v0
.end method


# virtual methods
.method audioEncode(Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;)Z
    .locals 13
    .param p1, "videoSavedCallback"    # Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;

    .line 721
    const/4 v0, 0x0

    .line 723
    .local v0, "audioEos":Z
    :cond_0
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_9

    iget-boolean v3, p0, Landroidx/camera/core/VideoCapture;->mIsRecording:Z

    if-eqz v3, :cond_9

    .line 725
    iget-object v3, p0, Landroidx/camera/core/VideoCapture;->mEndOfAudioStreamSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 726
    iget-object v3, p0, Landroidx/camera/core/VideoCapture;->mEndOfAudioStreamSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 727
    iput-boolean v1, p0, Landroidx/camera/core/VideoCapture;->mIsRecording:Z

    .line 731
    :cond_1
    iget-object v3, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    if-eqz v3, :cond_0

    iget-object v4, p0, Landroidx/camera/core/VideoCapture;->mAudioRecorder:Landroid/media/AudioRecord;

    if-eqz v4, :cond_0

    .line 732
    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    .line 733
    .local v3, "index":I
    if-ltz v3, :cond_3

    .line 734
    iget-object v4, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-direct {p0, v4, v3}, Landroidx/camera/core/VideoCapture;->getInputBuffer(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 735
    .local v4, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 736
    iget-object v5, p0, Landroidx/camera/core/VideoCapture;->mAudioRecorder:Landroid/media/AudioRecord;

    iget v6, p0, Landroidx/camera/core/VideoCapture;->mAudioBufferSize:I

    invoke-virtual {v5, v4, v6}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v5

    .line 737
    .local v5, "length":I
    if-lez v5, :cond_3

    .line 738
    iget-object v6, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    const/4 v8, 0x0

    .line 742
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long v10, v9, v11

    .line 743
    iget-boolean v7, p0, Landroidx/camera/core/VideoCapture;->mIsRecording:Z

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x4

    :goto_1
    move v12, v1

    .line 738
    move v7, v3

    move v9, v5

    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 749
    .end local v4    # "buffer":Ljava/nio/ByteBuffer;
    .end local v5    # "length":I
    :cond_3
    move v1, v0

    .end local v0    # "audioEos":Z
    .local v1, "audioEos":Z
    :cond_4
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    iget-object v4, p0, Landroidx/camera/core/VideoCapture;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    .line 750
    .local v4, "outIndex":I
    const/4 v0, -0x2

    if-eq v4, v0, :cond_6

    const/4 v0, -0x1

    if-eq v4, v0, :cond_5

    .line 763
    invoke-direct {p0, v4}, Landroidx/camera/core/VideoCapture;->writeAudioEncodedBuffer(I)Z

    move-result v0

    move v1, v0

    .end local v1    # "audioEos":Z
    .restart local v0    # "audioEos":Z
    goto :goto_2

    .line 761
    .end local v0    # "audioEos":Z
    .restart local v1    # "audioEos":Z
    :cond_5
    goto :goto_2

    .line 752
    :cond_6
    iget-object v5, p0, Landroidx/camera/core/VideoCapture;->mMuxerLock:Ljava/lang/Object;

    monitor-enter v5

    .line 753
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v6, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Landroidx/camera/core/VideoCapture;->mAudioTrackIndex:I

    .line 754
    if-ltz v0, :cond_7

    iget v0, p0, Landroidx/camera/core/VideoCapture;->mVideoTrackIndex:I

    if-ltz v0, :cond_7

    .line 755
    iput-boolean v2, p0, Landroidx/camera/core/VideoCapture;->mMuxerStarted:Z

    .line 756
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 758
    :cond_7
    monitor-exit v5

    .line 759
    nop

    .line 765
    :goto_2
    if-ltz v4, :cond_8

    if-eqz v1, :cond_4

    .line 766
    .end local v3    # "index":I
    :cond_8
    move v0, v1

    goto/16 :goto_0

    .line 758
    .restart local v3    # "index":I
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 771
    .end local v1    # "audioEos":Z
    .end local v3    # "index":I
    .end local v4    # "outIndex":I
    .restart local v0    # "audioEos":Z
    :cond_9
    :try_start_1
    const-string v3, "VideoCapture"

    const-string v4, "audioRecorder stop"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v3, p0, Landroidx/camera/core/VideoCapture;->mAudioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 776
    goto :goto_3

    .line 773
    :catch_0
    move-exception v3

    .line 774
    .local v3, "e":Ljava/lang/IllegalStateException;
    const-string v4, "Audio recorder stop failed!"

    invoke-interface {p1, v2, v4, v3}, Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;->onError(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 779
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :goto_3
    :try_start_2
    iget-object v3, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 783
    goto :goto_4

    .line 780
    :catch_1
    move-exception v3

    .line 781
    .restart local v3    # "e":Ljava/lang/IllegalStateException;
    const-string v4, "Audio encoder stop failed!"

    invoke-interface {p1, v2, v4, v3}, Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;->onError(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 785
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    :goto_4
    const-string v3, "VideoCapture"

    const-string v4, "Audio encode thread end"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v3, p0, Landroidx/camera/core/VideoCapture;->mEndOfVideoStreamSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 790
    return v1
.end method

.method public clear()V
    .locals 2

    .line 427
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mVideoHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 430
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mAudioHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 431
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 433
    iput-object v1, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    .line 436
    :cond_0
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mAudioRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 437
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 438
    iput-object v1, p0, Landroidx/camera/core/VideoCapture;->mAudioRecorder:Landroid/media/AudioRecord;

    .line 441
    :cond_1
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mCameraSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 442
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/camera/core/VideoCapture;->releaseCameraSurface(Z)V

    .line 444
    :cond_2
    return-void
.end method

.method public getDefaultBuilder(Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/UseCaseConfig$Builder;
    .locals 2
    .param p1, "cameraInfo"    # Landroidx/camera/core/CameraInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/CameraInfo;",
            ")",
            "Landroidx/camera/core/impl/UseCaseConfig$Builder<",
            "***>;"
        }
    .end annotation

    .line 243
    const-class v0, Landroidx/camera/core/impl/VideoCaptureConfig;

    invoke-static {v0, p1}, Landroidx/camera/core/CameraX;->getDefaultUseCaseConfig(Ljava/lang/Class;Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/VideoCaptureConfig;

    .line 245
    .local v0, "defaults":Landroidx/camera/core/impl/VideoCaptureConfig;
    if-eqz v0, :cond_0

    .line 246
    invoke-static {v0}, Landroidx/camera/core/VideoCapture$Builder;->fromConfig(Landroidx/camera/core/impl/VideoCaptureConfig;)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v1

    return-object v1

    .line 249
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected onSuggestedResolutionUpdated(Landroid/util/Size;)Landroid/util/Size;
    .locals 4
    .param p1, "suggestedResolution"    # Landroid/util/Size;

    .line 261
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mCameraSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 263
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 264
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 265
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/camera/core/VideoCapture;->releaseCameraSurface(Z)V

    .line 270
    :cond_0
    :try_start_0
    const-string/jumbo v0, "video/avc"

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    .line 271
    const-string v0, "audio/mp4a-latm"

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    nop

    .line 276
    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/camera/core/VideoCapture;->setupEncoder(Ljava/lang/String;Landroid/util/Size;)V

    .line 277
    return-object p1

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create MediaCodec due to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setTargetRotation(I)V
    .locals 4
    .param p1, "rotation"    # I

    .line 480
    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/VideoCaptureConfig;

    .line 481
    .local v0, "oldConfig":Landroidx/camera/core/impl/VideoCaptureConfig;
    invoke-static {v0}, Landroidx/camera/core/VideoCapture$Builder;->fromConfig(Landroidx/camera/core/impl/VideoCaptureConfig;)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v1

    .line 482
    .local v1, "builder":Landroidx/camera/core/VideoCapture$Builder;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroidx/camera/core/impl/VideoCaptureConfig;->getTargetRotation(I)I

    move-result v3

    .line 483
    .local v3, "oldRotation":I
    if-eq v3, v2, :cond_0

    if-eq v3, p1, :cond_1

    .line 484
    :cond_0
    invoke-static {v1, p1}, Landroidx/camera/core/internal/utils/UseCaseConfigUtil;->updateTargetRotationAndRelatedConfigs(Landroidx/camera/core/impl/UseCaseConfig$Builder;I)V

    .line 485
    invoke-virtual {v1}, Landroidx/camera/core/VideoCapture$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/VideoCaptureConfig;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/camera/core/VideoCapture;->updateUseCaseConfig(Landroidx/camera/core/impl/UseCaseConfig;)V

    .line 489
    :cond_1
    return-void
.end method

.method setupEncoder(Ljava/lang/String;Landroid/util/Size;)V
    .locals 9
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "resolution"    # Landroid/util/Size;

    .line 497
    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/VideoCaptureConfig;

    .line 500
    .local v0, "config":Landroidx/camera/core/impl/VideoCaptureConfig;
    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->reset()V

    .line 501
    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    .line 502
    invoke-static {v0, p2}, Landroidx/camera/core/VideoCapture;->createMediaFormat(Landroidx/camera/core/impl/VideoCaptureConfig;Landroid/util/Size;)Landroid/media/MediaFormat;

    move-result-object v2

    .line 501
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 506
    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mCameraSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 507
    invoke-direct {p0, v2}, Landroidx/camera/core/VideoCapture;->releaseCameraSurface(Z)V

    .line 509
    :cond_0
    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    .line 510
    .local v1, "cameraSurface":Landroid/view/Surface;
    iput-object v1, p0, Landroidx/camera/core/VideoCapture;->mCameraSurface:Landroid/view/Surface;

    .line 512
    invoke-static {v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->createFrom(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v5

    .line 514
    .local v5, "sessionConfigBuilder":Landroidx/camera/core/impl/SessionConfig$Builder;
    iget-object v6, p0, Landroidx/camera/core/VideoCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    if-eqz v6, :cond_1

    .line 515
    invoke-virtual {v6}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    .line 517
    :cond_1
    new-instance v6, Landroidx/camera/core/impl/ImmediateSurface;

    iget-object v7, p0, Landroidx/camera/core/VideoCapture;->mCameraSurface:Landroid/view/Surface;

    invoke-direct {v6, v7}, Landroidx/camera/core/impl/ImmediateSurface;-><init>(Landroid/view/Surface;)V

    iput-object v6, p0, Landroidx/camera/core/VideoCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    .line 518
    invoke-virtual {v6}, Landroidx/camera/core/impl/DeferrableSurface;->getTerminationFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v6

    .line 519
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroidx/camera/core/-$$Lambda$bKhot3B1n1f2PgvvZExesMq2yMg;

    invoke-direct {v7, v1}, Landroidx/camera/core/-$$Lambda$bKhot3B1n1f2PgvvZExesMq2yMg;-><init>(Landroid/view/Surface;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v8

    .line 518
    invoke-interface {v6, v7, v8}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 522
    iget-object v6, p0, Landroidx/camera/core/VideoCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v5, v6}, Landroidx/camera/core/impl/SessionConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;)V

    .line 524
    new-instance v6, Landroidx/camera/core/VideoCapture$3;

    invoke-direct {v6, p0, p1, p2}, Landroidx/camera/core/VideoCapture$3;-><init>(Landroidx/camera/core/VideoCapture;Ljava/lang/String;Landroid/util/Size;)V

    invoke-virtual {v5, v6}, Landroidx/camera/core/impl/SessionConfig$Builder;->addErrorListener(Landroidx/camera/core/impl/SessionConfig$ErrorListener;)V

    .line 538
    invoke-virtual {v5}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroidx/camera/core/VideoCapture;->updateSessionConfig(Landroidx/camera/core/impl/SessionConfig;)V

    .line 541
    invoke-direct {p0, p2, p1}, Landroidx/camera/core/VideoCapture;->setAudioParametersByCamcorderProfile(Landroid/util/Size;Ljava/lang/String;)V

    .line 542
    iget-object v6, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->reset()V

    .line 543
    iget-object v6, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    .line 544
    invoke-direct {p0}, Landroidx/camera/core/VideoCapture;->createAudioMediaFormat()Landroid/media/MediaFormat;

    move-result-object v7

    .line 543
    invoke-virtual {v6, v7, v3, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 546
    iget-object v3, p0, Landroidx/camera/core/VideoCapture;->mAudioRecorder:Landroid/media/AudioRecord;

    if-eqz v3, :cond_2

    .line 547
    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    .line 549
    :cond_2
    invoke-direct {p0, v0}, Landroidx/camera/core/VideoCapture;->autoConfigAudioRecordSource(Landroidx/camera/core/impl/VideoCaptureConfig;)Landroid/media/AudioRecord;

    move-result-object v3

    iput-object v3, p0, Landroidx/camera/core/VideoCapture;->mAudioRecorder:Landroid/media/AudioRecord;

    .line 551
    if-nez v3, :cond_3

    .line 552
    const-string v3, "VideoCapture"

    const-string v4, "AudioRecord object cannot initialized correctly!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_3
    const/4 v3, -0x1

    iput v3, p0, Landroidx/camera/core/VideoCapture;->mVideoTrackIndex:I

    .line 556
    iput v3, p0, Landroidx/camera/core/VideoCapture;->mAudioTrackIndex:I

    .line 557
    iput-boolean v2, p0, Landroidx/camera/core/VideoCapture;->mIsRecording:Z

    .line 558
    return-void
.end method

.method public startRecording(Ljava/io/File;Landroidx/camera/core/VideoCapture$Metadata;Ljava/util/concurrent/Executor;Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;)V
    .locals 17
    .param p1, "saveLocation"    # Ljava/io/File;
    .param p2, "metadata"    # Landroidx/camera/core/VideoCapture$Metadata;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "callback"    # Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;

    .line 314
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    const-string v0, "VideoCapture"

    const-string v1, "startRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v0, Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct {v0, v9, v10}, Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;-><init>(Ljava/util/concurrent/Executor;Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;)V

    move-object v11, v0

    .line 317
    .local v11, "postListener":Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;
    iget-object v0, v7, Landroidx/camera/core/VideoCapture;->mEndOfAudioVideoSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    const/4 v0, 0x3

    const-string v1, "It is still in video recording!"

    const/4 v2, 0x0

    invoke-interface {v11, v0, v1, v2}, Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;->onError(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 321
    return-void

    .line 326
    :cond_0
    :try_start_0
    iget-object v0, v7, Landroidx/camera/core/VideoCapture;->mAudioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    .line 330
    nop

    .line 332
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/VideoCapture;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    move-result-object v12

    .line 333
    .local v12, "attachedCamera":Landroidx/camera/core/impl/CameraInternal;
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/VideoCapture;->getCameraId()Ljava/lang/String;

    move-result-object v13

    .line 334
    .local v13, "cameraId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/VideoCapture;->getAttachedSurfaceResolution()Landroid/util/Size;

    move-result-object v14

    .line 337
    .local v14, "resolution":Landroid/util/Size;
    :try_start_1
    const-string v0, "VideoCapture"

    const-string/jumbo v2, "videoEncoder start"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, v7, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 340
    const-string v0, "VideoCapture"

    const-string v2, "audioEncoder start"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, v7, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 348
    nop

    .line 350
    invoke-interface {v12}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v15

    .line 351
    .local v15, "cameraInfoInternal":Landroidx/camera/core/impl/CameraInfoInternal;
    nop

    .line 352
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/VideoCapture;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/ImageOutputConfig;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroidx/camera/core/impl/ImageOutputConfig;->getTargetRotation(I)I

    move-result v0

    .line 351
    invoke-interface {v15, v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getSensorRotationDegrees(I)I

    move-result v6

    .line 355
    .local v6, "relativeRotation":I
    :try_start_2
    iget-object v3, v7, Landroidx/camera/core/VideoCapture;->mMuxerLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 356
    :try_start_3
    new-instance v0, Landroid/media/MediaMuxer;

    .line 358
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, v7, Landroidx/camera/core/VideoCapture;->mMuxer:Landroid/media/MediaMuxer;

    .line 361
    invoke-virtual {v0, v6}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 362
    iget-object v0, v8, Landroidx/camera/core/VideoCapture$Metadata;->location:Landroid/location/Location;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 363
    :try_start_4
    iget-object v0, v7, Landroidx/camera/core/VideoCapture;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v4, v8, Landroidx/camera/core/VideoCapture$Metadata;->location:Landroid/location/Location;

    .line 364
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    double-to-float v4, v4

    iget-object v5, v8, Landroidx/camera/core/VideoCapture$Metadata;->location:Landroid/location/Location;

    .line 365
    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    double-to-float v1, v1

    .line 363
    invoke-virtual {v0, v4, v1}, Landroid/media/MediaMuxer;->setLocation(FF)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 367
    :catchall_0
    move-exception v0

    move/from16 v16, v6

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 372
    nop

    .line 374
    iget-object v0, v7, Landroidx/camera/core/VideoCapture;->mEndOfVideoStreamSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 375
    iget-object v0, v7, Landroidx/camera/core/VideoCapture;->mEndOfAudioStreamSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 376
    iget-object v0, v7, Landroidx/camera/core/VideoCapture;->mEndOfAudioVideoSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 377
    const/4 v1, 0x1

    iput-boolean v1, v7, Landroidx/camera/core/VideoCapture;->mIsRecording:Z

    .line 379
    invoke-virtual/range {p0 .. p0}, Landroidx/camera/core/VideoCapture;->notifyActive()V

    .line 380
    iget-object v0, v7, Landroidx/camera/core/VideoCapture;->mAudioHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/camera/core/VideoCapture$1;

    invoke-direct {v1, v7, v11}, Landroidx/camera/core/VideoCapture$1;-><init>(Landroidx/camera/core/VideoCapture;Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 388
    iget-object v0, v7, Landroidx/camera/core/VideoCapture;->mVideoHandler:Landroid/os/Handler;

    new-instance v5, Landroidx/camera/core/VideoCapture$2;

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v3, v11

    move-object v4, v13

    move-object v8, v5

    move-object v5, v14

    move/from16 v16, v6

    .end local v6    # "relativeRotation":I
    .local v16, "relativeRotation":I
    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Landroidx/camera/core/VideoCapture$2;-><init>(Landroidx/camera/core/VideoCapture;Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;Ljava/lang/String;Landroid/util/Size;Ljava/io/File;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 399
    return-void

    .line 367
    .end local v16    # "relativeRotation":I
    .restart local v6    # "relativeRotation":I
    :catchall_1
    move-exception v0

    move/from16 v16, v6

    .end local v6    # "relativeRotation":I
    .restart local v16    # "relativeRotation":I
    :goto_1
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v11    # "postListener":Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;
    .end local v12    # "attachedCamera":Landroidx/camera/core/impl/CameraInternal;
    .end local v13    # "cameraId":Ljava/lang/String;
    .end local v14    # "resolution":Landroid/util/Size;
    .end local v15    # "cameraInfoInternal":Landroidx/camera/core/impl/CameraInfoInternal;
    .end local v16    # "relativeRotation":I
    .end local p1    # "saveLocation":Ljava/io/File;
    .end local p2    # "metadata":Landroidx/camera/core/VideoCapture$Metadata;
    .end local p3    # "executor":Ljava/util/concurrent/Executor;
    .end local p4    # "callback":Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 368
    .restart local v11    # "postListener":Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;
    .restart local v12    # "attachedCamera":Landroidx/camera/core/impl/CameraInternal;
    .restart local v13    # "cameraId":Ljava/lang/String;
    .restart local v14    # "resolution":Landroid/util/Size;
    .restart local v15    # "cameraInfoInternal":Landroidx/camera/core/impl/CameraInfoInternal;
    .restart local v16    # "relativeRotation":I
    .restart local p1    # "saveLocation":Ljava/io/File;
    .restart local p2    # "metadata":Landroidx/camera/core/VideoCapture$Metadata;
    .restart local p3    # "executor":Ljava/util/concurrent/Executor;
    .restart local p4    # "callback":Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;
    :catch_0
    move-exception v0

    goto :goto_2

    .line 367
    :catchall_2
    move-exception v0

    goto :goto_1

    .line 368
    .end local v16    # "relativeRotation":I
    .restart local v6    # "relativeRotation":I
    :catch_1
    move-exception v0

    move/from16 v16, v6

    .line 369
    .end local v6    # "relativeRotation":I
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "relativeRotation":I
    :goto_2
    invoke-virtual {v7, v13, v14}, Landroidx/camera/core/VideoCapture;->setupEncoder(Ljava/lang/String;Landroid/util/Size;)V

    .line 370
    const/4 v1, 0x2

    const-string v2, "MediaMuxer creation failed!"

    invoke-interface {v11, v1, v2, v0}, Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;->onError(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 371
    return-void

    .line 343
    .end local v0    # "e":Ljava/io/IOException;
    .end local v15    # "cameraInfoInternal":Landroidx/camera/core/impl/CameraInfoInternal;
    .end local v16    # "relativeRotation":I
    :catch_2
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v7, v13, v14}, Landroidx/camera/core/VideoCapture;->setupEncoder(Ljava/lang/String;Landroid/util/Size;)V

    .line 345
    const-string v1, "Audio/Video encoder start fail"

    const/4 v2, 0x1

    invoke-interface {v11, v2, v1, v0}, Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;->onError(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 347
    return-void

    .line 327
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v12    # "attachedCamera":Landroidx/camera/core/impl/CameraInternal;
    .end local v13    # "cameraId":Ljava/lang/String;
    .end local v14    # "resolution":Landroid/util/Size;
    :catch_3
    move-exception v0

    const/4 v2, 0x1

    .line 328
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    const-string v1, "AudioRecorder start fail"

    invoke-interface {v11, v2, v1, v0}, Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;->onError(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 329
    return-void
.end method

.method public startRecording(Ljava/io/File;Ljava/util/concurrent/Executor;Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;)V
    .locals 2
    .param p1, "saveLocation"    # Ljava/io/File;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;

    .line 293
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mIsFirstVideoSampleWrite:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 294
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mIsFirstAudioSampleWrite:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 295
    sget-object v0, Landroidx/camera/core/VideoCapture;->EMPTY_METADATA:Landroidx/camera/core/VideoCapture$Metadata;

    invoke-virtual {p0, p1, v0, p2, p3}, Landroidx/camera/core/VideoCapture;->startRecording(Ljava/io/File;Landroidx/camera/core/VideoCapture$Metadata;Ljava/util/concurrent/Executor;Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;)V

    .line 296
    return-void
.end method

.method public stopRecording()V
    .locals 2

    .line 411
    const-string v0, "VideoCapture"

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture;->notifyInactive()V

    .line 413
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mEndOfAudioVideoSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/camera/core/VideoCapture;->mIsRecording:Z

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mEndOfAudioStreamSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 417
    :cond_0
    return-void
.end method

.method videoEncode(Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;Ljava/lang/String;Landroid/util/Size;)Z
    .locals 8
    .param p1, "videoSavedCallback"    # Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;
    .param p2, "cameraId"    # Ljava/lang/String;
    .param p3, "resolution"    # Landroid/util/Size;

    .line 642
    const/4 v0, 0x0

    .line 643
    .local v0, "errorOccurred":Z
    const/4 v1, 0x0

    .line 644
    .local v1, "videoEos":Z
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_4

    if-nez v0, :cond_4

    .line 646
    iget-object v5, p0, Landroidx/camera/core/VideoCapture;->mEndOfVideoStreamSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 647
    iget-object v5, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 648
    iget-object v5, p0, Landroidx/camera/core/VideoCapture;->mEndOfVideoStreamSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 652
    :cond_0
    iget-object v3, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    iget-object v5, p0, Landroidx/camera/core/VideoCapture;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v6, 0x2710

    .line 653
    invoke-virtual {v3, v5, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    .line 654
    .local v5, "outputBufferId":I
    const/4 v3, -0x2

    if-eq v5, v3, :cond_1

    .line 676
    invoke-direct {p0, v5}, Landroidx/camera/core/VideoCapture;->writeVideoEncodedBuffer(I)Z

    move-result v1

    goto :goto_2

    .line 656
    :cond_1
    iget-boolean v3, p0, Landroidx/camera/core/VideoCapture;->mMuxerStarted:Z

    if-eqz v3, :cond_2

    .line 657
    const-string v3, "Unexpected change in video encoding format."

    invoke-interface {p1, v4, v3, v2}, Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;->onError(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 661
    const/4 v0, 0x1

    move v6, v0

    goto :goto_1

    .line 656
    :cond_2
    move v6, v0

    .line 664
    .end local v0    # "errorOccurred":Z
    .local v6, "errorOccurred":Z
    :goto_1
    iget-object v7, p0, Landroidx/camera/core/VideoCapture;->mMuxerLock:Ljava/lang/Object;

    monitor-enter v7

    .line 665
    :try_start_0
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v2, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Landroidx/camera/core/VideoCapture;->mVideoTrackIndex:I

    .line 666
    iget v2, p0, Landroidx/camera/core/VideoCapture;->mAudioTrackIndex:I

    if-ltz v2, :cond_3

    if-ltz v0, :cond_3

    .line 667
    iput-boolean v4, p0, Landroidx/camera/core/VideoCapture;->mMuxerStarted:Z

    .line 668
    const-string v0, "VideoCapture"

    const-string v2, "media mMuxer start"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 671
    :cond_3
    monitor-exit v7

    .line 672
    move v0, v6

    .line 678
    .end local v5    # "outputBufferId":I
    .end local v6    # "errorOccurred":Z
    .restart local v0    # "errorOccurred":Z
    :goto_2
    goto :goto_0

    .line 671
    .end local v0    # "errorOccurred":Z
    .restart local v5    # "outputBufferId":I
    .restart local v6    # "errorOccurred":Z
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 681
    .end local v5    # "outputBufferId":I
    .end local v6    # "errorOccurred":Z
    .restart local v0    # "errorOccurred":Z
    :cond_4
    :try_start_1
    const-string v5, "VideoCapture"

    const-string/jumbo v6, "videoEncoder stop"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v5, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 687
    goto :goto_3

    .line 683
    :catch_0
    move-exception v5

    .line 684
    .local v5, "e":Ljava/lang/IllegalStateException;
    const-string v6, "Video encoder stop failed!"

    invoke-interface {p1, v4, v6, v5}, Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;->onError(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 686
    const/4 v0, 0x1

    .line 691
    .end local v5    # "e":Ljava/lang/IllegalStateException;
    :goto_3
    :try_start_2
    iget-object v5, p0, Landroidx/camera/core/VideoCapture;->mMuxerLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 692
    :try_start_3
    iget-object v6, p0, Landroidx/camera/core/VideoCapture;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v6, :cond_6

    .line 693
    iget-boolean v6, p0, Landroidx/camera/core/VideoCapture;->mMuxerStarted:Z

    if-eqz v6, :cond_5

    .line 694
    iget-object v6, p0, Landroidx/camera/core/VideoCapture;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v6}, Landroid/media/MediaMuxer;->stop()V

    .line 696
    :cond_5
    iget-object v6, p0, Landroidx/camera/core/VideoCapture;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v6}, Landroid/media/MediaMuxer;->release()V

    .line 697
    iput-object v2, p0, Landroidx/camera/core/VideoCapture;->mMuxer:Landroid/media/MediaMuxer;

    .line 699
    :cond_6
    monitor-exit v5

    .line 703
    goto :goto_4

    .line 699
    :catchall_1
    move-exception v2

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "errorOccurred":Z
    .end local v1    # "videoEos":Z
    .end local p1    # "videoSavedCallback":Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;
    .end local p2    # "cameraId":Ljava/lang/String;
    .end local p3    # "resolution":Landroid/util/Size;
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    .line 700
    .restart local v0    # "errorOccurred":Z
    .restart local v1    # "videoEos":Z
    .restart local p1    # "videoSavedCallback":Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;
    .restart local p2    # "cameraId":Ljava/lang/String;
    .restart local p3    # "resolution":Landroid/util/Size;
    :catch_1
    move-exception v2

    .line 701
    .local v2, "e":Ljava/lang/IllegalStateException;
    const/4 v5, 0x2

    const-string v6, "Muxer stop failed!"

    invoke-interface {p1, v5, v6, v2}, Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;->onError(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 702
    const/4 v0, 0x1

    .line 705
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_4
    iput-boolean v3, p0, Landroidx/camera/core/VideoCapture;->mMuxerStarted:Z

    .line 709
    invoke-virtual {p0, p2, p3}, Landroidx/camera/core/VideoCapture;->setupEncoder(Ljava/lang/String;Landroid/util/Size;)V

    .line 710
    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture;->notifyReset()V

    .line 713
    iget-object v2, p0, Landroidx/camera/core/VideoCapture;->mEndOfAudioVideoSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 715
    const-string v2, "VideoCapture"

    const-string v3, "Video encode thread end."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    return v0
.end method
