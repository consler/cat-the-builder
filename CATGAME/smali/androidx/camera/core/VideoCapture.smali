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
.method public static synthetic $r8$lambda$PL53KcydsIe6GhkDkql7rLdOZhc(Landroid/view/Surface;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    return-void
.end method

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

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 144
    fill-array-data v0, :array_0

    sput-object v0, Landroidx/camera/core/VideoCapture;->CamcorderQuality:[I

    const/4 v0, 0x3

    new-array v0, v0, [S

    .line 155
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
    .locals 3

    .line 209
    invoke-direct {p0, p1}, Landroidx/camera/core/UseCase;-><init>(Landroidx/camera/core/impl/UseCaseConfig;)V

    .line 160
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/VideoCapture;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 161
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/core/VideoCapture;->mMuxerLock:Ljava/lang/Object;

    .line 163
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "CameraX-video encoding thread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/camera/core/VideoCapture;->mVideoHandlerThread:Landroid/os/HandlerThread;

    .line 167
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraX-audio encoding thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mAudioHandlerThread:Landroid/os/HandlerThread;

    .line 170
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroidx/camera/core/VideoCapture;->mEndOfVideoStreamSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 171
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroidx/camera/core/VideoCapture;->mEndOfAudioStreamSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 172
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroidx/camera/core/VideoCapture;->mEndOfAudioVideoSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 173
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v1, p0, Landroidx/camera/core/VideoCapture;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 175
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroidx/camera/core/VideoCapture;->mIsFirstVideoSampleWrite:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 176
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroidx/camera/core/VideoCapture;->mIsFirstAudioSampleWrite:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 185
    iput-boolean v2, p0, Landroidx/camera/core/VideoCapture;->mMuxerStarted:Z

    .line 197
    iput-boolean v2, p0, Landroidx/camera/core/VideoCapture;->mIsRecording:Z

    .line 212
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 213
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroidx/camera/core/VideoCapture;->mVideoHandler:Landroid/os/Handler;

    .line 216
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 217
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/camera/core/VideoCapture;->mAudioHandler:Landroid/os/Handler;

    return-void
.end method

.method private autoConfigAudioRecordSource(Landroidx/camera/core/impl/VideoCaptureConfig;)Landroid/media/AudioRecord;
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "VideoCapture"

    .line 815
    sget-object v3, Landroidx/camera/core/VideoCapture;->sAudioEncoding:[S

    array-length v4, v3

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-short v0, v3, v5

    .line 819
    iget v6, v1, Landroidx/camera/core/VideoCapture;->mAudioChannelCount:I

    const/4 v12, 0x1

    if-ne v6, v12, :cond_0

    const/16 v6, 0x10

    goto :goto_1

    :cond_0
    const/16 v6, 0xc

    :goto_1
    move v13, v6

    .line 822
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/core/impl/VideoCaptureConfig;->getAudioRecordSource()I

    move-result v14

    .line 825
    :try_start_0
    iget v6, v1, Landroidx/camera/core/VideoCapture;->mAudioSampleRate:I

    .line 826
    invoke-static {v6, v13, v0}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v6

    if-gtz v6, :cond_1

    .line 829
    invoke-virtual/range {p1 .. p1}, Landroidx/camera/core/impl/VideoCaptureConfig;->getAudioMinBufferSize()I

    move-result v6

    :cond_1
    move v15, v6

    .line 832
    new-instance v16, Landroid/media/AudioRecord;

    iget v8, v1, Landroidx/camera/core/VideoCapture;->mAudioSampleRate:I

    mul-int/lit8 v11, v15, 0x2

    move-object/from16 v6, v16

    move v7, v14

    move v9, v13

    move v10, v0

    invoke-direct/range {v6 .. v11}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 840
    invoke-virtual/range {v16 .. v16}, Landroid/media/AudioRecord;->getState()I

    move-result v6

    if-ne v6, v12, :cond_2

    .line 841
    iput v15, v1, Landroidx/camera/core/VideoCapture;->mAudioBufferSize:I

    .line 842
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "source: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " audioSampleRate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroidx/camera/core/VideoCapture;->mAudioSampleRate:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " channelConfig: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " audioFormat: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " bufferSize: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v16

    :catch_0
    move-exception v0

    const-string v6, "Exception, keep trying."

    .line 857
    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private createAudioMediaFormat()Landroid/media/MediaFormat;
    .locals 3

    .line 803
    iget v0, p0, Landroidx/camera/core/VideoCapture;->mAudioSampleRate:I

    iget v1, p0, Landroidx/camera/core/VideoCapture;->mAudioChannelCount:I

    const-string v2, "audio/mp4a-latm"

    .line 804
    invoke-static {v2, v0, v1}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "aac-profile"

    const/4 v2, 0x2

    .line 806
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "bitrate"

    .line 808
    iget v2, p0, Landroidx/camera/core/VideoCapture;->mAudioBitRate:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object v0
.end method

.method private static createMediaFormat(Landroidx/camera/core/impl/VideoCaptureConfig;Landroid/util/Size;)Landroid/media/MediaFormat;
    .locals 2

    .line 224
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    const-string v1, "video/avc"

    .line 223
    invoke-static {v1, v0, p1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    const-string v0, "color-format"

    const v1, 0x7f000789

    .line 225
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "bitrate"

    .line 226
    invoke-virtual {p0}, Landroidx/camera/core/impl/VideoCaptureConfig;->getBitRate()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "frame-rate"

    .line 227
    invoke-virtual {p0}, Landroidx/camera/core/impl/VideoCaptureConfig;->getVideoFrameRate()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "i-frame-interval"

    .line 228
    invoke-virtual {p0}, Landroidx/camera/core/impl/VideoCaptureConfig;->getIFrameInterval()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-object p1
.end method

.method private getInputBuffer(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;
    .locals 0

    .line 794
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method private getOutputBuffer(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;
    .locals 0

    .line 798
    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$releaseCameraSurface$0(ZLandroid/media/MediaCodec;)V
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 459
    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V

    :cond_0
    return-void
.end method

.method private releaseCameraSurface(Z)V
    .locals 3

    .line 447
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    if-nez v0, :cond_0

    return-void

    .line 451
    :cond_0
    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    .line 455
    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->close()V

    .line 456
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v0}, Landroidx/camera/core/impl/DeferrableSurface;->getTerminationFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v2, Landroidx/camera/core/VideoCapture$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v1}, Landroidx/camera/core/VideoCapture$$ExternalSyntheticLambda0;-><init>(ZLandroid/media/MediaCodec;)V

    .line 461
    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 456
    invoke-interface {v0, v2, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 464
    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    .line 466
    :cond_1
    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mCameraSurface:Landroid/view/Surface;

    .line 467
    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    return-void
.end method

.method private setAudioParametersByCamcorderProfile(Landroid/util/Size;Ljava/lang/String;)V
    .locals 7

    .line 869
    sget-object v0, Landroidx/camera/core/VideoCapture;->CamcorderQuality:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 870
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v4}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 871
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5, v4}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    .line 872
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget v6, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-ne v5, v6, :cond_0

    .line 873
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v5

    iget v6, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v5, v6, :cond_0

    .line 874
    iget p1, v4, Landroid/media/CamcorderProfile;->audioChannels:I

    iput p1, p0, Landroidx/camera/core/VideoCapture;->mAudioChannelCount:I

    .line 875
    iget p1, v4, Landroid/media/CamcorderProfile;->audioSampleRate:I

    iput p1, p0, Landroidx/camera/core/VideoCapture;->mAudioSampleRate:I

    .line 876
    iget p1, v4, Landroid/media/CamcorderProfile;->audioBitRate:I

    iput p1, p0, Landroidx/camera/core/VideoCapture;->mAudioBitRate:I

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 886
    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/VideoCaptureConfig;

    .line 887
    invoke-virtual {p1}, Landroidx/camera/core/impl/VideoCaptureConfig;->getAudioChannelCount()I

    move-result p2

    iput p2, p0, Landroidx/camera/core/VideoCapture;->mAudioChannelCount:I

    .line 888
    invoke-virtual {p1}, Landroidx/camera/core/impl/VideoCaptureConfig;->getAudioSampleRate()I

    move-result p2

    iput p2, p0, Landroidx/camera/core/VideoCapture;->mAudioSampleRate:I

    .line 889
    invoke-virtual {p1}, Landroidx/camera/core/impl/VideoCaptureConfig;->getAudioBitRate()I

    move-result p1

    iput p1, p0, Landroidx/camera/core/VideoCapture;->mAudioBitRate:I

    :cond_2
    return-void
.end method

.method private writeAudioEncodedBuffer(I)Z
    .locals 7

    .line 603
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-direct {p0, v0, p1}, Landroidx/camera/core/VideoCapture;->getOutputBuffer(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 604
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

    const-string v3, "VideoCapture"

    const-string v4, "First audio sample written."

    .line 612
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

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "VideoCapture"

    .line 618
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "audio error:size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroidx/camera/core/VideoCapture;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/offset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/camera/core/VideoCapture;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/timeUs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/camera/core/VideoCapture;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 629
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 630
    iget-object p1, p0, Landroidx/camera/core/VideoCapture;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    return v2
.end method

.method private writeVideoEncodedBuffer(I)Z
    .locals 8

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const-string v1, "VideoCapture"

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Output buffer should not have negative index: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 572
    :cond_0
    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "VideoCapture"

    const-string v1, "OutputBuffer was null."

    .line 576
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string v4, "VideoCapture"

    const-string v5, "First video sample written."

    .line 588
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
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 596
    :cond_3
    :goto_0
    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 599
    iget-object p1, p0, Landroidx/camera/core/VideoCapture;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_4

    move v0, v3

    :cond_4
    return v0
.end method


# virtual methods
.method audioEncode(Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;)Z
    .locals 13

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-nez v1, :cond_7

    .line 723
    iget-boolean v3, p0, Landroidx/camera/core/VideoCapture;->mIsRecording:Z

    if-eqz v3, :cond_7

    .line 725
    iget-object v3, p0, Landroidx/camera/core/VideoCapture;->mEndOfAudioStreamSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 726
    iget-object v3, p0, Landroidx/camera/core/VideoCapture;->mEndOfAudioStreamSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 727
    iput-boolean v0, p0, Landroidx/camera/core/VideoCapture;->mIsRecording:Z

    .line 731
    :cond_1
    iget-object v3, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    if-eqz v3, :cond_0

    iget-object v4, p0, Landroidx/camera/core/VideoCapture;->mAudioRecorder:Landroid/media/AudioRecord;

    if-eqz v4, :cond_0

    const-wide/16 v4, -0x1

    .line 732
    invoke-virtual {v3, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v7

    if-ltz v7, :cond_3

    .line 734
    iget-object v3, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-direct {p0, v3, v7}, Landroidx/camera/core/VideoCapture;->getInputBuffer(Landroid/media/MediaCodec;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 735
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 736
    iget-object v4, p0, Landroidx/camera/core/VideoCapture;->mAudioRecorder:Landroid/media/AudioRecord;

    iget v5, p0, Landroidx/camera/core/VideoCapture;->mAudioBufferSize:I

    invoke-virtual {v4, v3, v5}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v9

    if-lez v9, :cond_3

    .line 738
    iget-object v6, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    const/4 v8, 0x0

    .line 742
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const-wide/16 v10, 0x3e8

    div-long v10, v3, v10

    .line 743
    iget-boolean v3, p0, Landroidx/camera/core/VideoCapture;->mIsRecording:Z

    if-eqz v3, :cond_2

    move v12, v0

    goto :goto_1

    :cond_2
    const/4 v3, 0x4

    move v12, v3

    .line 738
    :goto_1
    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 749
    :cond_3
    iget-object v3, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    iget-object v4, p0, Landroidx/camera/core/VideoCapture;->mAudioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    const/4 v4, -0x2

    if-eq v3, v4, :cond_4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    .line 763
    invoke-direct {p0, v3}, Landroidx/camera/core/VideoCapture;->writeAudioEncodedBuffer(I)Z

    move-result v1

    goto :goto_2

    .line 752
    :cond_4
    iget-object v4, p0, Landroidx/camera/core/VideoCapture;->mMuxerLock:Ljava/lang/Object;

    monitor-enter v4

    .line 753
    :try_start_0
    iget-object v5, p0, Landroidx/camera/core/VideoCapture;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v6, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v5

    iput v5, p0, Landroidx/camera/core/VideoCapture;->mAudioTrackIndex:I

    if-ltz v5, :cond_5

    .line 754
    iget v5, p0, Landroidx/camera/core/VideoCapture;->mVideoTrackIndex:I

    if-ltz v5, :cond_5

    .line 755
    iput-boolean v2, p0, Landroidx/camera/core/VideoCapture;->mMuxerStarted:Z

    .line 756
    iget-object v5, p0, Landroidx/camera/core/VideoCapture;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v5}, Landroid/media/MediaMuxer;->start()V

    .line 758
    :cond_5
    monitor-exit v4

    :cond_6
    :goto_2
    if-ltz v3, :cond_0

    if-eqz v1, :cond_3

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_7
    :try_start_1
    const-string v1, "VideoCapture"

    const-string v3, "audioRecorder stop"

    .line 771
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mAudioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    const-string v3, "Audio recorder stop failed!"

    .line 774
    invoke-interface {p1, v2, v3, v1}, Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;->onError(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 779
    :goto_3
    :try_start_2
    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    const-string v3, "Audio encoder stop failed!"

    .line 781
    invoke-interface {p1, v2, v3, v1}, Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;->onError(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    const-string p1, "VideoCapture"

    const-string v1, "Audio encode thread end"

    .line 785
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object p1, p0, Landroidx/camera/core/VideoCapture;->mEndOfVideoStreamSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v0
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

    const/4 v0, 0x1

    .line 442
    invoke-direct {p0, v0}, Landroidx/camera/core/VideoCapture;->releaseCameraSurface(Z)V

    :cond_2
    return-void
.end method

.method public getDefaultBuilder(Landroidx/camera/core/CameraInfo;)Landroidx/camera/core/impl/UseCaseConfig$Builder;
    .locals 1
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

    move-result-object p1

    check-cast p1, Landroidx/camera/core/impl/VideoCaptureConfig;

    if-eqz p1, :cond_0

    .line 246
    invoke-static {p1}, Landroidx/camera/core/VideoCapture$Builder;->fromConfig(Landroidx/camera/core/impl/VideoCaptureConfig;)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onSuggestedResolutionUpdated(Landroid/util/Size;)Landroid/util/Size;
    .locals 3

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

    const/4 v0, 0x0

    .line 266
    invoke-direct {p0, v0}, Landroidx/camera/core/VideoCapture;->releaseCameraSurface(Z)V

    :cond_0
    :try_start_0
    const-string v0, "video/avc"

    .line 270
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    const-string v0, "audio/mp4a-latm"

    .line 271
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/camera/core/VideoCapture;->setupEncoder(Ljava/lang/String;Landroid/util/Size;)V

    return-object p1

    :catch_0
    move-exception p1

    .line 273
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to create MediaCodec due to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTargetRotation(I)V
    .locals 3

    .line 480
    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/VideoCaptureConfig;

    .line 481
    invoke-static {v0}, Landroidx/camera/core/VideoCapture$Builder;->fromConfig(Landroidx/camera/core/impl/VideoCaptureConfig;)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v1

    const/4 v2, -0x1

    .line 482
    invoke-virtual {v0, v2}, Landroidx/camera/core/impl/VideoCaptureConfig;->getTargetRotation(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    if-eq v0, p1, :cond_1

    .line 484
    :cond_0
    invoke-static {v1, p1}, Landroidx/camera/core/internal/utils/UseCaseConfigUtil;->updateTargetRotationAndRelatedConfigs(Landroidx/camera/core/impl/UseCaseConfig$Builder;I)V

    .line 485
    invoke-virtual {v1}, Landroidx/camera/core/VideoCapture$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/VideoCaptureConfig;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/camera/core/VideoCapture;->updateUseCaseConfig(Landroidx/camera/core/impl/UseCaseConfig;)V

    :cond_1
    return-void
.end method

.method setupEncoder(Ljava/lang/String;Landroid/util/Size;)V
    .locals 8

    .line 497
    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/VideoCaptureConfig;

    .line 500
    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->reset()V

    .line 501
    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    .line 502
    invoke-static {v0, p2}, Landroidx/camera/core/VideoCapture;->createMediaFormat(Landroidx/camera/core/impl/VideoCaptureConfig;Landroid/util/Size;)Landroid/media/MediaFormat;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 501
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
    iput-object v1, p0, Landroidx/camera/core/VideoCapture;->mCameraSurface:Landroid/view/Surface;

    .line 512
    invoke-static {v0}, Landroidx/camera/core/impl/SessionConfig$Builder;->createFrom(Landroidx/camera/core/impl/UseCaseConfig;)Landroidx/camera/core/impl/SessionConfig$Builder;

    move-result-object v5

    .line 514
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

    new-instance v7, Landroidx/camera/core/VideoCapture$$ExternalSyntheticLambda1;

    invoke-direct {v7, v1}, Landroidx/camera/core/VideoCapture$$ExternalSyntheticLambda1;-><init>(Landroid/view/Surface;)V

    invoke-static {}, Landroidx/camera/core/impl/utils/executor/CameraXExecutors;->mainThreadExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 518
    invoke-interface {v6, v7, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 522
    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mDeferrableSurface:Landroidx/camera/core/impl/DeferrableSurface;

    invoke-virtual {v5, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->addSurface(Landroidx/camera/core/impl/DeferrableSurface;)V

    .line 524
    new-instance v1, Landroidx/camera/core/VideoCapture$3;

    invoke-direct {v1, p0, p1, p2}, Landroidx/camera/core/VideoCapture$3;-><init>(Landroidx/camera/core/VideoCapture;Ljava/lang/String;Landroid/util/Size;)V

    invoke-virtual {v5, v1}, Landroidx/camera/core/impl/SessionConfig$Builder;->addErrorListener(Landroidx/camera/core/impl/SessionConfig$ErrorListener;)V

    .line 538
    invoke-virtual {v5}, Landroidx/camera/core/impl/SessionConfig$Builder;->build()Landroidx/camera/core/impl/SessionConfig;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/camera/core/VideoCapture;->updateSessionConfig(Landroidx/camera/core/impl/SessionConfig;)V

    .line 541
    invoke-direct {p0, p2, p1}, Landroidx/camera/core/VideoCapture;->setAudioParametersByCamcorderProfile(Landroid/util/Size;Ljava/lang/String;)V

    .line 542
    iget-object p1, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->reset()V

    .line 543
    iget-object p1, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    .line 544
    invoke-direct {p0}, Landroidx/camera/core/VideoCapture;->createAudioMediaFormat()Landroid/media/MediaFormat;

    move-result-object p2

    .line 543
    invoke-virtual {p1, p2, v3, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 546
    iget-object p1, p0, Landroidx/camera/core/VideoCapture;->mAudioRecorder:Landroid/media/AudioRecord;

    if-eqz p1, :cond_2

    .line 547
    invoke-virtual {p1}, Landroid/media/AudioRecord;->release()V

    .line 549
    :cond_2
    invoke-direct {p0, v0}, Landroidx/camera/core/VideoCapture;->autoConfigAudioRecordSource(Landroidx/camera/core/impl/VideoCaptureConfig;)Landroid/media/AudioRecord;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/core/VideoCapture;->mAudioRecorder:Landroid/media/AudioRecord;

    if-nez p1, :cond_3

    const-string p1, "VideoCapture"

    const-string p2, "AudioRecord object cannot initialized correctly!"

    .line 552
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p1, -0x1

    .line 555
    iput p1, p0, Landroidx/camera/core/VideoCapture;->mVideoTrackIndex:I

    .line 556
    iput p1, p0, Landroidx/camera/core/VideoCapture;->mAudioTrackIndex:I

    .line 557
    iput-boolean v2, p0, Landroidx/camera/core/VideoCapture;->mIsRecording:Z

    return-void
.end method

.method public startRecording(Ljava/io/File;Landroidx/camera/core/VideoCapture$Metadata;Ljava/util/concurrent/Executor;Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;)V
    .locals 9

    const-string v0, "VideoCapture"

    const-string v1, "startRecording"

    .line 314
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v4, Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;

    invoke-direct {v4, p3, p4}, Landroidx/camera/core/VideoCapture$VideoSavedListenerWrapper;-><init>(Ljava/util/concurrent/Executor;Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;)V

    .line 317
    iget-object p3, p0, Landroidx/camera/core/VideoCapture;->mEndOfAudioVideoSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-nez p3, :cond_0

    const-string p1, "It is still in video recording!"

    const/4 p2, 0x0

    const/4 p3, 0x3

    .line 318
    invoke-interface {v4, p3, p1, p2}, Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;->onError(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 326
    :try_start_0
    iget-object p4, p0, Landroidx/camera/core/VideoCapture;->mAudioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {p4}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 332
    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture;->getCamera()Landroidx/camera/core/impl/CameraInternal;

    move-result-object p4

    .line 333
    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture;->getCameraId()Ljava/lang/String;

    move-result-object v5

    .line 334
    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture;->getAttachedSurfaceResolution()Landroid/util/Size;

    move-result-object v6

    :try_start_1
    const-string v0, "VideoCapture"

    const-string v1, "videoEncoder start"

    .line 337
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    const-string v0, "VideoCapture"

    const-string v1, "audioEncoder start"

    .line 340
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 350
    invoke-interface {p4}, Landroidx/camera/core/impl/CameraInternal;->getCameraInfoInternal()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object p4

    .line 352
    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture;->getUseCaseConfig()Landroidx/camera/core/impl/UseCaseConfig;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/impl/ImageOutputConfig;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroidx/camera/core/impl/ImageOutputConfig;->getTargetRotation(I)I

    move-result v0

    .line 351
    invoke-interface {p4, v0}, Landroidx/camera/core/impl/CameraInfoInternal;->getSensorRotationDegrees(I)I

    move-result p4

    .line 355
    :try_start_2
    iget-object v0, p0, Landroidx/camera/core/VideoCapture;->mMuxerLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 356
    :try_start_3
    new-instance v2, Landroid/media/MediaMuxer;

    .line 358
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Landroidx/camera/core/VideoCapture;->mMuxer:Landroid/media/MediaMuxer;

    .line 361
    invoke-virtual {v2, p4}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 362
    iget-object p4, p2, Landroidx/camera/core/VideoCapture$Metadata;->location:Landroid/location/Location;

    if-eqz p4, :cond_1

    .line 363
    iget-object p4, p0, Landroidx/camera/core/VideoCapture;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v2, p2, Landroidx/camera/core/VideoCapture$Metadata;->location:Landroid/location/Location;

    .line 364
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    iget-object p2, p2, Landroidx/camera/core/VideoCapture$Metadata;->location:Landroid/location/Location;

    .line 365
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    double-to-float p2, v7

    .line 363
    invoke-virtual {p4, v2, p2}, Landroid/media/MediaMuxer;->setLocation(FF)V

    .line 367
    :cond_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 374
    iget-object p2, p0, Landroidx/camera/core/VideoCapture;->mEndOfVideoStreamSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 375
    iget-object p2, p0, Landroidx/camera/core/VideoCapture;->mEndOfAudioStreamSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 376
    iget-object p2, p0, Landroidx/camera/core/VideoCapture;->mEndOfAudioVideoSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 377
    iput-boolean p3, p0, Landroidx/camera/core/VideoCapture;->mIsRecording:Z

    .line 379
    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture;->notifyActive()V

    .line 380
    iget-object p2, p0, Landroidx/camera/core/VideoCapture;->mAudioHandler:Landroid/os/Handler;

    new-instance p3, Landroidx/camera/core/VideoCapture$1;

    invoke-direct {p3, p0, v4}, Landroidx/camera/core/VideoCapture$1;-><init>(Landroidx/camera/core/VideoCapture;Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 388
    iget-object p2, p0, Landroidx/camera/core/VideoCapture;->mVideoHandler:Landroid/os/Handler;

    new-instance p3, Landroidx/camera/core/VideoCapture$2;

    move-object v2, p3

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Landroidx/camera/core/VideoCapture$2;-><init>(Landroidx/camera/core/VideoCapture;Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;Ljava/lang/String;Landroid/util/Size;Ljava/io/File;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 367
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 369
    invoke-virtual {p0, v5, v6}, Landroidx/camera/core/VideoCapture;->setupEncoder(Ljava/lang/String;Landroid/util/Size;)V

    const/4 p2, 0x2

    const-string p3, "MediaMuxer creation failed!"

    .line 370
    invoke-interface {v4, p2, p3, p1}, Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;->onError(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception p1

    .line 344
    invoke-virtual {p0, v5, v6}, Landroidx/camera/core/VideoCapture;->setupEncoder(Ljava/lang/String;Landroid/util/Size;)V

    const-string p2, "Audio/Video encoder start fail"

    .line 345
    invoke-interface {v4, p3, p2, p1}, Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;->onError(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception p1

    const-string p2, "AudioRecorder start fail"

    .line 328
    invoke-interface {v4, p3, p2, p1}, Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;->onError(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public startRecording(Ljava/io/File;Ljava/util/concurrent/Executor;Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;)V
    .locals 2

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

    return-void
.end method

.method public stopRecording()V
    .locals 2

    const-string v0, "VideoCapture"

    const-string v1, "stopRecording"

    .line 411
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

    :cond_0
    return-void
.end method

.method videoEncode(Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;Ljava/lang/String;Landroid/util/Size;)Z
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_4

    if-nez v2, :cond_4

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

    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 652
    :cond_0
    iget-object v5, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    iget-object v6, p0, Landroidx/camera/core/VideoCapture;->mVideoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v7, 0x2710

    .line 653
    invoke-virtual {v5, v6, v7, v8}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    const/4 v6, -0x2

    if-eq v5, v6, :cond_1

    .line 676
    invoke-direct {p0, v5}, Landroidx/camera/core/VideoCapture;->writeVideoEncodedBuffer(I)Z

    move-result v1

    goto :goto_0

    .line 656
    :cond_1
    iget-boolean v5, p0, Landroidx/camera/core/VideoCapture;->mMuxerStarted:Z

    if-eqz v5, :cond_2

    const-string v2, "Unexpected change in video encoding format."

    .line 657
    invoke-interface {p1, v4, v2, v3}, Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;->onError(ILjava/lang/String;Ljava/lang/Throwable;)V

    move v2, v4

    .line 664
    :cond_2
    iget-object v5, p0, Landroidx/camera/core/VideoCapture;->mMuxerLock:Ljava/lang/Object;

    monitor-enter v5

    .line 665
    :try_start_0
    iget-object v3, p0, Landroidx/camera/core/VideoCapture;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v6, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v3

    iput v3, p0, Landroidx/camera/core/VideoCapture;->mVideoTrackIndex:I

    .line 666
    iget v6, p0, Landroidx/camera/core/VideoCapture;->mAudioTrackIndex:I

    if-ltz v6, :cond_3

    if-ltz v3, :cond_3

    .line 667
    iput-boolean v4, p0, Landroidx/camera/core/VideoCapture;->mMuxerStarted:Z

    const-string v3, "VideoCapture"

    const-string v4, "media mMuxer start"

    .line 668
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v3, p0, Landroidx/camera/core/VideoCapture;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3}, Landroid/media/MediaMuxer;->start()V

    .line 671
    :cond_3
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :try_start_1
    const-string v1, "VideoCapture"

    const-string v5, "videoEncoder stop"

    .line 681
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Video encoder stop failed!"

    .line 684
    invoke-interface {p1, v4, v2, v1}, Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;->onError(ILjava/lang/String;Ljava/lang/Throwable;)V

    move v2, v4

    .line 691
    :goto_1
    :try_start_2
    iget-object v1, p0, Landroidx/camera/core/VideoCapture;->mMuxerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 692
    :try_start_3
    iget-object v5, p0, Landroidx/camera/core/VideoCapture;->mMuxer:Landroid/media/MediaMuxer;

    if-eqz v5, :cond_6

    .line 693
    iget-boolean v6, p0, Landroidx/camera/core/VideoCapture;->mMuxerStarted:Z

    if-eqz v6, :cond_5

    .line 694
    invoke-virtual {v5}, Landroid/media/MediaMuxer;->stop()V

    .line 696
    :cond_5
    iget-object v5, p0, Landroidx/camera/core/VideoCapture;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v5}, Landroid/media/MediaMuxer;->release()V

    .line 697
    iput-object v3, p0, Landroidx/camera/core/VideoCapture;->mMuxer:Landroid/media/MediaMuxer;

    .line 699
    :cond_6
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v1

    const/4 v2, 0x2

    const-string v3, "Muxer stop failed!"

    .line 701
    invoke-interface {p1, v2, v3, v1}, Landroidx/camera/core/VideoCapture$OnVideoSavedCallback;->onError(ILjava/lang/String;Ljava/lang/Throwable;)V

    move v2, v4

    .line 705
    :goto_2
    iput-boolean v0, p0, Landroidx/camera/core/VideoCapture;->mMuxerStarted:Z

    .line 709
    invoke-virtual {p0, p2, p3}, Landroidx/camera/core/VideoCapture;->setupEncoder(Ljava/lang/String;Landroid/util/Size;)V

    .line 710
    invoke-virtual {p0}, Landroidx/camera/core/VideoCapture;->notifyReset()V

    .line 713
    iget-object p1, p0, Landroidx/camera/core/VideoCapture;->mEndOfAudioVideoSignal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p1, "VideoCapture"

    const-string p2, "Video encode thread end."

    .line 715
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
