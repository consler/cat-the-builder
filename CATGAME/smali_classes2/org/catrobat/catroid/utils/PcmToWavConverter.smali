.class public final Lorg/catrobat/catroid/utils/PcmToWavConverter;
.super Ljava/lang/Object;
.source "PcmToWavConverter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPcmToWavConverter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PcmToWavConverter.kt\norg/catrobat/catroid/utils/PcmToWavConverter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,143:1\n1#2:144\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\n\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J0\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000bJ\"\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000bH\u0007J \u0010\u0014\u001a\u00020\u00062\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u0019J\u0018\u0010\u001a\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u000bH\u0002J\u0018\u0010\u001a\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0018\u0010\u001a\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u0004H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lorg/catrobat/catroid/utils/PcmToWavConverter;",
        "",
        "()V",
        "TAG",
        "",
        "convertPcmToWav",
        "",
        "input",
        "Ljava/io/File;",
        "output",
        "channelCount",
        "",
        "sampleRate",
        "bitsPerSample",
        "copy",
        "",
        "source",
        "Ljava/io/InputStream;",
        "Ljava/io/OutputStream;",
        "bufferSize",
        "writePcmToFile",
        "buffer",
        "",
        "file",
        "append",
        "",
        "writeToOutput",
        "data",
        "",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/catrobat/catroid/utils/PcmToWavConverter;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lorg/catrobat/catroid/utils/PcmToWavConverter;

    invoke-direct {v0}, Lorg/catrobat/catroid/utils/PcmToWavConverter;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/utils/PcmToWavConverter;->INSTANCE:Lorg/catrobat/catroid/utils/PcmToWavConverter;

    .line 49
    const-class v0, Lorg/catrobat/catroid/utils/PcmToWavConverter;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/utils/PcmToWavConverter;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic copy$default(Lorg/catrobat/catroid/utils/PcmToWavConverter;Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 88
    const/16 p3, 0x2800

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/catroid/utils/PcmToWavConverter;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide p0

    return-wide p0
.end method

.method private final writeToOutput(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "data"    # I

    .line 132
    shr-int/lit8 v0, p2, 0x0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 133
    shr-int/lit8 v0, p2, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 134
    shr-int/lit8 v0, p2, 0x10

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 135
    shr-int/lit8 v0, p2, 0x18

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 136
    return-void
.end method

.method private final writeToOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 3
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "data"    # Ljava/lang/String;

    .line 128
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .local v2, "element":C
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    .end local v2    # "element":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_0
    return-void
.end method

.method private final writeToOutput(Ljava/io/OutputStream;S)V
    .locals 1
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "data"    # S

    .line 139
    shr-int/lit8 v0, p2, 0x0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 140
    shr-int/lit8 v0, p2, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 141
    return-void
.end method


# virtual methods
.method public final convertPcmToWav(Ljava/io/File;Ljava/io/File;III)V
    .locals 18
    .param p1, "input"    # Ljava/io/File;
    .param p2, "output"    # Ljava/io/File;
    .param p3, "channelCount"    # I
    .param p4, "sampleRate"    # I
    .param p5, "bitsPerSample"    # I

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    const-string v0, "input"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    .line 59
    .local v6, "inputSize":I
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 60
    nop

    .line 61
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v7, v0

    check-cast v7, Ljava/io/Closeable;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v8, v7

    check-cast v8, Ljava/io/FileOutputStream;

    .local v8, "encoded":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 62
    .local v9, "$i$a$-use-PcmToWavConverter$convertPcmToWav$1":I
    sget-object v10, Lorg/catrobat/catroid/utils/PcmToWavConverter;->INSTANCE:Lorg/catrobat/catroid/utils/PcmToWavConverter;

    move-object v11, v8

    check-cast v11, Ljava/io/OutputStream;

    const-string v12, "RIFF"

    invoke-direct {v10, v11, v12}, Lorg/catrobat/catroid/utils/PcmToWavConverter;->writeToOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 63
    sget-object v10, Lorg/catrobat/catroid/utils/PcmToWavConverter;->INSTANCE:Lorg/catrobat/catroid/utils/PcmToWavConverter;

    move-object v11, v8

    check-cast v11, Ljava/io/OutputStream;

    add-int/lit8 v12, v6, 0x24

    invoke-direct {v10, v11, v12}, Lorg/catrobat/catroid/utils/PcmToWavConverter;->writeToOutput(Ljava/io/OutputStream;I)V

    .line 64
    sget-object v10, Lorg/catrobat/catroid/utils/PcmToWavConverter;->INSTANCE:Lorg/catrobat/catroid/utils/PcmToWavConverter;

    move-object v11, v8

    check-cast v11, Ljava/io/OutputStream;

    const-string v12, "WAVE"

    invoke-direct {v10, v11, v12}, Lorg/catrobat/catroid/utils/PcmToWavConverter;->writeToOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 66
    sget-object v10, Lorg/catrobat/catroid/utils/PcmToWavConverter;->INSTANCE:Lorg/catrobat/catroid/utils/PcmToWavConverter;

    move-object v11, v8

    check-cast v11, Ljava/io/OutputStream;

    const-string v12, "fmt "

    invoke-direct {v10, v11, v12}, Lorg/catrobat/catroid/utils/PcmToWavConverter;->writeToOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 67
    sget-object v10, Lorg/catrobat/catroid/utils/PcmToWavConverter;->INSTANCE:Lorg/catrobat/catroid/utils/PcmToWavConverter;

    move-object v11, v8

    check-cast v11, Ljava/io/OutputStream;

    const/16 v12, 0x10

    invoke-direct {v10, v11, v12}, Lorg/catrobat/catroid/utils/PcmToWavConverter;->writeToOutput(Ljava/io/OutputStream;I)V

    .line 68
    sget-object v10, Lorg/catrobat/catroid/utils/PcmToWavConverter;->INSTANCE:Lorg/catrobat/catroid/utils/PcmToWavConverter;

    move-object v11, v8

    check-cast v11, Ljava/io/OutputStream;

    const/4 v12, 0x1

    int-to-short v12, v12

    invoke-direct {v10, v11, v12}, Lorg/catrobat/catroid/utils/PcmToWavConverter;->writeToOutput(Ljava/io/OutputStream;S)V

    .line 69
    sget-object v10, Lorg/catrobat/catroid/utils/PcmToWavConverter;->INSTANCE:Lorg/catrobat/catroid/utils/PcmToWavConverter;

    move-object v11, v8

    check-cast v11, Ljava/io/OutputStream;

    int-to-short v12, v3

    invoke-direct {v10, v11, v12}, Lorg/catrobat/catroid/utils/PcmToWavConverter;->writeToOutput(Ljava/io/OutputStream;S)V

    .line 70
    sget-object v10, Lorg/catrobat/catroid/utils/PcmToWavConverter;->INSTANCE:Lorg/catrobat/catroid/utils/PcmToWavConverter;

    move-object v11, v8

    check-cast v11, Ljava/io/OutputStream;

    invoke-direct {v10, v11, v4}, Lorg/catrobat/catroid/utils/PcmToWavConverter;->writeToOutput(Ljava/io/OutputStream;I)V

    .line 71
    sget-object v10, Lorg/catrobat/catroid/utils/PcmToWavConverter;->INSTANCE:Lorg/catrobat/catroid/utils/PcmToWavConverter;

    move-object v11, v8

    check-cast v11, Ljava/io/OutputStream;

    mul-int v12, v4, v3

    mul-int/2addr v12, v5

    div-int/lit8 v12, v12, 0x8

    invoke-direct {v10, v11, v12}, Lorg/catrobat/catroid/utils/PcmToWavConverter;->writeToOutput(Ljava/io/OutputStream;I)V

    .line 72
    sget-object v10, Lorg/catrobat/catroid/utils/PcmToWavConverter;->INSTANCE:Lorg/catrobat/catroid/utils/PcmToWavConverter;

    move-object v11, v8

    check-cast v11, Ljava/io/OutputStream;

    mul-int v12, v3, v5

    div-int/lit8 v12, v12, 0x8

    int-to-short v12, v12

    invoke-direct {v10, v11, v12}, Lorg/catrobat/catroid/utils/PcmToWavConverter;->writeToOutput(Ljava/io/OutputStream;S)V

    .line 73
    sget-object v10, Lorg/catrobat/catroid/utils/PcmToWavConverter;->INSTANCE:Lorg/catrobat/catroid/utils/PcmToWavConverter;

    move-object v11, v8

    check-cast v11, Ljava/io/OutputStream;

    int-to-short v12, v5

    invoke-direct {v10, v11, v12}, Lorg/catrobat/catroid/utils/PcmToWavConverter;->writeToOutput(Ljava/io/OutputStream;S)V

    .line 75
    sget-object v10, Lorg/catrobat/catroid/utils/PcmToWavConverter;->INSTANCE:Lorg/catrobat/catroid/utils/PcmToWavConverter;

    move-object v11, v8

    check-cast v11, Ljava/io/OutputStream;

    const-string v12, "data"

    invoke-direct {v10, v11, v12}, Lorg/catrobat/catroid/utils/PcmToWavConverter;->writeToOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 76
    sget-object v10, Lorg/catrobat/catroid/utils/PcmToWavConverter;->INSTANCE:Lorg/catrobat/catroid/utils/PcmToWavConverter;

    move-object v11, v8

    check-cast v11, Ljava/io/OutputStream;

    invoke-direct {v10, v11, v6}, Lorg/catrobat/catroid/utils/PcmToWavConverter;->writeToOutput(Ljava/io/OutputStream;I)V

    .line 77
    sget-object v12, Lorg/catrobat/catroid/utils/PcmToWavConverter;->INSTANCE:Lorg/catrobat/catroid/utils/PcmToWavConverter;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v13, v10

    check-cast v13, Ljava/io/InputStream;

    move-object v14, v8

    check-cast v14, Ljava/io/OutputStream;

    const/4 v15, 0x0

    const/16 v16, 0x4

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lorg/catrobat/catroid/utils/PcmToWavConverter;->copy$default(Lorg/catrobat/catroid/utils/PcmToWavConverter;Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .end local v8    # "encoded":Ljava/io/FileOutputStream;
    .end local v9    # "$i$a$-use-PcmToWavConverter$convertPcmToWav$1":I
    :try_start_2
    invoke-static {v7, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v8, v0

    .end local v6    # "inputSize":I
    .end local p1    # "input":Ljava/io/File;
    .end local p2    # "output":Ljava/io/File;
    .end local p3    # "channelCount":I
    .end local p4    # "sampleRate":I
    .end local p5    # "bitsPerSample":I
    :try_start_3
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v6    # "inputSize":I
    .restart local p1    # "input":Ljava/io/File;
    .restart local p2    # "output":Ljava/io/File;
    .restart local p3    # "channelCount":I
    .restart local p4    # "sampleRate":I
    .restart local p5    # "bitsPerSample":I
    :catchall_1
    move-exception v0

    move-object v9, v0

    :try_start_4
    invoke-static {v7, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v6    # "inputSize":I
    .end local p1    # "input":Ljava/io/File;
    .end local p2    # "output":Ljava/io/File;
    .end local p3    # "channelCount":I
    .end local p4    # "sampleRate":I
    .end local p5    # "bitsPerSample":I
    throw v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 79
    .restart local v6    # "inputSize":I
    .restart local p1    # "input":Ljava/io/File;
    .restart local p2    # "output":Ljava/io/File;
    .restart local p3    # "channelCount":I
    .restart local p4    # "sampleRate":I
    .restart local p5    # "bitsPerSample":I
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/IOException;
    sget-object v7, Lorg/catrobat/catroid/utils/PcmToWavConverter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to convert file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " to WAV for Huawei text-to-speech"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v0

    check-cast v9, Ljava/lang/Throwable;

    invoke-static {v7, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 82
    return-void
.end method

.method public final copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/catrobat/catroid/utils/PcmToWavConverter;->copy$default(Lorg/catrobat/catroid/utils/PcmToWavConverter;Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final copy(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .locals 7
    .param p1, "source"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "bufferSize"    # I

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    const-wide/16 v0, 0x0

    .line 91
    .local v0, "read":J
    new-array v2, p3, [B

    .line 92
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 93
    .local v3, "n":I
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .line 144
    .local v5, "it":I
    const/4 v6, 0x0

    .line 93
    .local v6, "$i$a$-also-PcmToWavConverter$copy$1":I
    move v3, v5

    .end local v5    # "it":I
    .end local v6    # "$i$a$-also-PcmToWavConverter$copy$1":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 94
    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 95
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 93
    goto :goto_0

    .line 97
    :cond_0
    return-wide v0
.end method

.method public final writePcmToFile([BLjava/io/File;Z)V
    .locals 9
    .param p1, "buffer"    # [B
    .param p2, "file"    # Ljava/io/File;
    .param p3, "append"    # Z

    const-string v0, "file"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/io/RandomAccessFile;

    .line 102
    .local v1, "randomAccessFile":Ljava/lang/Object;
    check-cast v0, Ljava/io/FileOutputStream;

    .line 103
    .local v0, "fileOutputStream":Ljava/io/FileOutputStream;
    nop

    .line 104
    const-string v2, "text-to-speech"

    const-string v3, " to WAV file for Huawei "

    const-string v4, "Failed to write data "

    if-eqz p3, :cond_0

    .line 105
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    invoke-direct {v5, p2, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v5

    .line 106
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 144
    .local v5, "it":J
    const/4 v7, 0x0

    .line 106
    .local v7, "$i$a$-let-PcmToWavConverter$writePcmToFile$1":I
    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 107
    .end local v5    # "it":J
    .end local v7    # "$i$a$-let-PcmToWavConverter$writePcmToFile$1":I
    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->write([B)V

    goto :goto_0

    .line 109
    :cond_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v5

    .line 110
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 111
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :goto_0
    nop

    .line 117
    nop

    .line 118
    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_1

    .line 120
    :catch_0
    move-exception v5

    goto :goto_2

    .line 119
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 121
    .local v5, "e":Ljava/io/IOException;
    :goto_2
    sget-object v6, Lorg/catrobat/catroid/utils/PcmToWavConverter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    move-object v3, v5

    check-cast v3, Ljava/lang/Throwable;

    .line 121
    invoke-static {v6, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    nop

    .line 124
    goto :goto_7

    :catchall_0
    move-exception v5

    goto :goto_8

    .line 113
    :catch_1
    move-exception v5

    .line 114
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_2
    sget-object v6, Lorg/catrobat/catroid/utils/PcmToWavConverter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 115
    move-object v8, v5

    check-cast v8, Ljava/lang/Throwable;

    .line 114
    invoke-static {v6, v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    .end local v5    # "e":Ljava/io/IOException;
    nop

    .line 118
    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_5

    .line 120
    :catch_2
    move-exception v5

    goto :goto_6

    .line 119
    :cond_3
    :goto_5
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 121
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_6
    sget-object v6, Lorg/catrobat/catroid/utils/PcmToWavConverter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    .line 125
    .end local v5    # "e":Ljava/io/IOException;
    :goto_7
    return-void

    .line 117
    :goto_8
    nop

    .line 118
    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_9

    .line 120
    :catch_3
    move-exception v6

    goto :goto_a

    .line 119
    :cond_4
    :goto_9
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_b

    .line 121
    .local v6, "e":Ljava/io/IOException;
    :goto_a
    sget-object v7, Lorg/catrobat/catroid/utils/PcmToWavConverter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    move-object v3, v6

    check-cast v3, Ljava/lang/Throwable;

    .line 121
    invoke-static {v7, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .end local v6    # "e":Ljava/io/IOException;
    :cond_5
    :goto_b
    throw v5
.end method
