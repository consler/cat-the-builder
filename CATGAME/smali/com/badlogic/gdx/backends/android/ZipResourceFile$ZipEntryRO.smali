.class public final Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;
.super Ljava/lang/Object;
.source "ZipResourceFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/ZipResourceFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ZipEntryRO"
.end annotation


# instance fields
.field public mCRC32:J

.field public mCompressedLength:J

.field public final mFile:Ljava/io/File;

.field public final mFileName:Ljava/lang/String;

.field public mLocalHdrOffset:J

.field public mMethod:I

.field public mOffset:J

.field public mUncompressedLength:J

.field public mWhenModified:J

.field public final mZipFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "zipFileName"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "fileName"    # Ljava/lang/String;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mOffset:J

    .line 100
    iput-object p3, p0, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mZipFileName:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mFile:Ljava/io/File;

    .line 103
    return-void
.end method


# virtual methods
.method public getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;
    .locals 8

    .line 159
    iget v0, p0, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mMethod:I

    if-nez v0, :cond_0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mFile:Ljava/io/File;

    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 164
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->getOffset()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mUncompressedLength:J

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 166
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 171
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOffset()J
    .locals 2

    .line 146
    iget-wide v0, p0, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mOffset:J

    return-wide v0
.end method

.method public getZipFile()Ljava/io/File;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getZipFileName()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mZipFileName:Ljava/lang/String;

    return-object v0
.end method

.method public isUncompressed()Z
    .locals 1

    .line 155
    iget v0, p0, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mMethod:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setOffsetFromFile(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "f"    # Ljava/io/RandomAccessFile;
    .param p2, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-wide v0, p0, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mLocalHdrOffset:J

    .line 123
    .local v0, "localHdrOffset":J
    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 124
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 125
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    const v3, 0x4034b50

    if-ne v2, v3, :cond_0

    .line 129
    const/16 v2, 0x1a

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    .line 130
    .local v2, "nameLen":I
    const/16 v4, 0x1c

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v4

    and-int/2addr v3, v4

    .line 131
    .local v3, "extraLen":I
    const-wide/16 v4, 0x1e

    add-long/2addr v4, v0

    int-to-long v6, v2

    add-long/2addr v4, v6

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mOffset:J

    .end local v2    # "nameLen":I
    .end local v3    # "extraLen":I
    goto :goto_0

    .line 126
    :cond_0
    const-string/jumbo v2, "zipro"

    const-string v3, "didn\'t find signature at start of lfh"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    .end local v0    # "localHdrOffset":J
    .end local p1    # "f":Ljava/io/RandomAccessFile;
    .end local p2    # "buf":Ljava/nio/ByteBuffer;
    throw v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .restart local v0    # "localHdrOffset":J
    .restart local p1    # "f":Ljava/io/RandomAccessFile;
    .restart local p2    # "buf":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v2

    .line 135
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 132
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 133
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 136
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    nop

    .line 137
    :goto_1
    return-void
.end method
