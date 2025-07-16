.class public Lcom/pdrogfer/mididroid/MidiFile;
.super Ljava/lang/Object;
.source "MidiFile.java"


# static fields
.field public static final DEFAULT_RESOLUTION:I = 0x1e0

.field public static final HEADER_SIZE:I = 0xe

.field public static final IDENTIFIER:[B


# instance fields
.field private mResolution:I

.field private mTrackCount:I

.field private mTracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/pdrogfer/mididroid/MidiTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 33
    fill-array-data v0, :array_0

    sput-object v0, Lcom/pdrogfer/mididroid/MidiFile;->IDENTIFIER:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4dt
        0x54t
        0x68t
        0x64t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x1e0

    .line 45
    invoke-direct {p0, v0}, Lcom/pdrogfer/mididroid/MidiFile;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/pdrogfer/mididroid/MidiFile;-><init>(ILjava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/pdrogfer/mididroid/MidiTrack;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x1e0

    .line 55
    :goto_0
    iput p1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mResolution:I

    if-eqz p2, :cond_1

    move-object p1, p2

    goto :goto_1

    .line 57
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    iput-object p1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTracks:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTrackCount:I

    const/4 p2, 0x1

    if-le p1, p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    .line 59
    :goto_2
    iput p2, p0, Lcom/pdrogfer/mididroid/MidiFile;->mType:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lcom/pdrogfer/mididroid/MidiFile;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0xe

    new-array p1, p1, [B

    .line 72
    invoke-virtual {v0, p1}, Ljava/io/BufferedInputStream;->read([B)I

    .line 74
    invoke-direct {p0, p1}, Lcom/pdrogfer/mididroid/MidiFile;->initFromBuffer([B)V

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTracks:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 77
    :goto_0
    iget v1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTrackCount:I

    if-ge p1, v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTracks:Ljava/util/ArrayList;

    new-instance v2, Lcom/pdrogfer/mididroid/MidiTrack;

    invoke-direct {v2, v0}, Lcom/pdrogfer/mididroid/MidiTrack;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initFromBuffer([B)V
    .locals 3

    .line 196
    sget-object v0, Lcom/pdrogfer/mididroid/MidiFile;->IDENTIFIER:[B

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/pdrogfer/mididroid/util/MidiUtil;->bytesEqual([B[BII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "File identifier not MThd. Exiting"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 199
    iput v2, p0, Lcom/pdrogfer/mididroid/MidiFile;->mType:I

    .line 200
    iput v2, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTrackCount:I

    const/16 p1, 0x1e0

    .line 201
    iput p1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mResolution:I

    return-void

    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x2

    .line 205
    invoke-static {p1, v0, v1}, Lcom/pdrogfer/mididroid/util/MidiUtil;->bytesToInt([BII)I

    move-result v0

    iput v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mType:I

    const/16 v0, 0xa

    .line 206
    invoke-static {p1, v0, v1}, Lcom/pdrogfer/mididroid/util/MidiUtil;->bytesToInt([BII)I

    move-result v0

    iput v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTrackCount:I

    const/16 v0, 0xc

    .line 207
    invoke-static {p1, v0, v1}, Lcom/pdrogfer/mididroid/util/MidiUtil;->bytesToInt([BII)I

    move-result p1

    iput p1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mResolution:I

    return-void
.end method


# virtual methods
.method public addTrack(Lcom/pdrogfer/mididroid/MidiTrack;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/pdrogfer/mididroid/MidiFile;->addTrack(Lcom/pdrogfer/mididroid/MidiTrack;I)V

    return-void
.end method

.method public addTrack(Lcom/pdrogfer/mididroid/MidiTrack;I)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-le p2, v0, :cond_0

    .line 152
    iget-object p2, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    goto :goto_0

    :cond_0
    if-gez p2, :cond_1

    move p2, v1

    .line 159
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 160
    iget-object p1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTrackCount:I

    const/4 p2, 0x1

    if-le p1, p2, :cond_2

    move v1, p2

    .line 161
    :cond_2
    iput v1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mType:I

    return-void
.end method

.method public getLengthInTicks()J
    .locals 6

    .line 126
    iget-object v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pdrogfer/mididroid/MidiTrack;

    .line 128
    invoke-virtual {v3}, Lcom/pdrogfer/mididroid/MidiTrack;->getLengthInTicks()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    move-wide v1, v3

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public getResolution()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mResolution:I

    return v0
.end method

.method public getTrackCount()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTrackCount:I

    return v0
.end method

.method public getTracks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/pdrogfer/mididroid/MidiTrack;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTracks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mType:I

    return v0
.end method

.method public removeTrack(I)V
    .locals 1

    if-ltz p1, :cond_2

    .line 166
    iget-object v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 171
    iget-object p1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTrackCount:I

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 172
    :goto_0
    iput v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mType:I

    :cond_2
    :goto_1
    return-void
.end method

.method public setResolution(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 114
    iput p1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mResolution:I

    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-le p1, v0, :cond_1

    :goto_0
    move p1, v1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    .line 93
    iget v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTrackCount:I

    if-le v0, v1, :cond_2

    goto :goto_0

    .line 97
    :cond_2
    :goto_1
    iput p1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mType:I

    return-void
.end method

.method public writeToFile(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 179
    sget-object p1, Lcom/pdrogfer/mididroid/MidiFile;->IDENTIFIER:[B

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    const/4 p1, 0x6

    const/4 v1, 0x4

    .line 180
    invoke-static {p1, v1}, Lcom/pdrogfer/mididroid/util/MidiUtil;->intToBytes(II)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 181
    iget p1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mType:I

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/pdrogfer/mididroid/util/MidiUtil;->intToBytes(II)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 182
    iget p1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTrackCount:I

    invoke-static {p1, v1}, Lcom/pdrogfer/mididroid/util/MidiUtil;->intToBytes(II)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 183
    iget p1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mResolution:I

    invoke-static {p1, v1}, Lcom/pdrogfer/mididroid/util/MidiUtil;->intToBytes(II)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 185
    iget-object p1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pdrogfer/mididroid/MidiTrack;

    .line 187
    invoke-virtual {v1, v0}, Lcom/pdrogfer/mididroid/MidiTrack;->writeToFile(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 191
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method
