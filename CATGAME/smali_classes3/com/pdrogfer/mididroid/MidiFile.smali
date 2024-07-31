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

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [B

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

    .line 45
    const/16 v0, 0x1e0

    invoke-direct {p0, v0}, Lcom/pdrogfer/mididroid/MidiFile;-><init>(I)V

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "resolution"    # I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/pdrogfer/mididroid/MidiFile;-><init>(ILjava/util/ArrayList;)V

    .line 51
    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 2
    .param p1, "resolution"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/pdrogfer/mididroid/MidiTrack;",
            ">;)V"
        }
    .end annotation

    .line 54
    .local p2, "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pdrogfer/mididroid/MidiTrack;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-ltz p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e0

    :goto_0
    iput v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mResolution:I

    .line 57
    if-eqz p2, :cond_1

    move-object v0, p2

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTracks:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTrackCount:I

    .line 59
    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput v1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mType:I

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "fileIn"    # Ljava/io/File;
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

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "rawIn"    # Ljava/io/InputStream;
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

    .line 71
    .local v0, "in":Ljava/io/BufferedInputStream;
    const/16 v1, 0xe

    new-array v1, v1, [B

    .line 72
    .local v1, "buffer":[B
    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    .line 74
    invoke-direct {p0, v1}, Lcom/pdrogfer/mididroid/MidiFile;->initFromBuffer([B)V

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTracks:Ljava/util/ArrayList;

    .line 77
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTrackCount:I

    if-ge v2, v3, :cond_0

    .line 79
    iget-object v3, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTracks:Ljava/util/ArrayList;

    new-instance v4, Lcom/pdrogfer/mididroid/MidiTrack;

    invoke-direct {v4, v0}, Lcom/pdrogfer/mididroid/MidiTrack;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private initFromBuffer([B)V
    .locals 3
    .param p1, "buffer"    # [B

    .line 196
    sget-object v0, Lcom/pdrogfer/mididroid/MidiFile;->IDENTIFIER:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p1, v0, v1, v2}, Lcom/pdrogfer/mididroid/util/MidiUtil;->bytesEqual([B[BII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "File identifier not MThd. Exiting"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 199
    iput v1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mType:I

    .line 200
    iput v1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTrackCount:I

    .line 201
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mResolution:I

    .line 202
    return-void

    .line 205
    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lcom/pdrogfer/mididroid/util/MidiUtil;->bytesToInt([BII)I

    move-result v0

    iput v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mType:I

    .line 206
    const/16 v0, 0xa

    invoke-static {p1, v0, v1}, Lcom/pdrogfer/mididroid/util/MidiUtil;->bytesToInt([BII)I

    move-result v0

    iput v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTrackCount:I

    .line 207
    const/16 v0, 0xc

    invoke-static {p1, v0, v1}, Lcom/pdrogfer/mididroid/util/MidiUtil;->bytesToInt([BII)I

    move-result v0

    iput v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mResolution:I

    .line 208
    return-void
.end method


# virtual methods
.method public addTrack(Lcom/pdrogfer/mididroid/MidiTrack;)V
    .locals 1
    .param p1, "T"    # Lcom/pdrogfer/mididroid/MidiTrack;

    .line 144
    iget-object v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/pdrogfer/mididroid/MidiFile;->addTrack(Lcom/pdrogfer/mididroid/MidiTrack;I)V

    .line 145
    return-void
.end method

.method public addTrack(Lcom/pdrogfer/mididroid/MidiTrack;I)V
    .locals 2
    .param p1, "T"    # Lcom/pdrogfer/mididroid/MidiTrack;
    .param p2, "pos"    # I

    .line 150
    iget-object v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    goto :goto_0

    .line 154
    :cond_0
    if-gez p2, :cond_1

    .line 156
    const/4 p2, 0x0

    .line 159
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTrackCount:I

    .line 161
    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput v1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mType:I

    .line 162
    return-void
.end method

.method public getLengthInTicks()J
    .locals 7

    .line 125
    const-wide/16 v0, 0x0

    .line 126
    .local v0, "length":J
    iget-object v2, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pdrogfer/mididroid/MidiTrack;

    .line 128
    .local v3, "T":Lcom/pdrogfer/mididroid/MidiTrack;
    invoke-virtual {v3}, Lcom/pdrogfer/mididroid/MidiTrack;->getLengthInTicks()J

    move-result-wide v4

    .line 129
    .local v4, "l":J
    cmp-long v6, v4, v0

    if-lez v6, :cond_0

    .line 131
    move-wide v0, v4

    .line 133
    .end local v3    # "T":Lcom/pdrogfer/mididroid/MidiTrack;
    .end local v4    # "l":J
    :cond_0
    goto :goto_0

    .line 134
    :cond_1
    return-wide v0
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
    .locals 2
    .param p1, "pos"    # I

    .line 166
    if-ltz p1, :cond_2

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
    iget-object v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTrackCount:I

    .line 172
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mType:I

    .line 173
    return-void

    .line 168
    :cond_2
    :goto_1
    return-void
.end method

.method public setResolution(I)V
    .locals 0
    .param p1, "res"    # I

    .line 112
    if-ltz p1, :cond_0

    .line 114
    iput p1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mResolution:I

    .line 116
    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 2
    .param p1, "type"    # I

    .line 85
    if-gez p1, :cond_0

    .line 87
    const/4 p1, 0x0

    goto :goto_0

    .line 89
    :cond_0
    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 91
    const/4 p1, 0x1

    goto :goto_0

    .line 93
    :cond_1
    if-nez p1, :cond_2

    iget v0, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTrackCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 95
    const/4 p1, 0x1

    .line 97
    :cond_2
    :goto_0
    iput p1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mType:I

    .line 98
    return-void
.end method

.method public writeToFile(Ljava/io/File;)V
    .locals 3
    .param p1, "outFile"    # Ljava/io/File;
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
    .local v0, "fout":Ljava/io/FileOutputStream;
    sget-object v1, Lcom/pdrogfer/mididroid/MidiFile;->IDENTIFIER:[B

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 180
    const/4 v1, 0x6

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/pdrogfer/mididroid/util/MidiUtil;->intToBytes(II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 181
    iget v1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mType:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/pdrogfer/mididroid/util/MidiUtil;->intToBytes(II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 182
    iget v1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTrackCount:I

    invoke-static {v1, v2}, Lcom/pdrogfer/mididroid/util/MidiUtil;->intToBytes(II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 183
    iget v1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mResolution:I

    invoke-static {v1, v2}, Lcom/pdrogfer/mididroid/util/MidiUtil;->intToBytes(II)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 185
    iget-object v1, p0, Lcom/pdrogfer/mididroid/MidiFile;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pdrogfer/mididroid/MidiTrack;

    .line 187
    .local v2, "T":Lcom/pdrogfer/mididroid/MidiTrack;
    invoke-virtual {v2, v0}, Lcom/pdrogfer/mididroid/MidiTrack;->writeToFile(Ljava/io/OutputStream;)V

    .line 188
    .end local v2    # "T":Lcom/pdrogfer/mididroid/MidiTrack;
    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 191
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 192
    return-void
.end method
