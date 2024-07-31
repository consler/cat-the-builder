.class public Lorg/catrobat/catroid/common/SoundInfo;
.super Ljava/lang/Object;
.source "SoundInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/catrobat/catroid/common/Nameable;
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient file:Ljava/io/File;

.field private fileName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation
.end field

.field midiFile:Z

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lorg/catrobat/catroid/common/SoundInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/common/SoundInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/catrobat/catroid/common/SoundInfo;->name:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lorg/catrobat/catroid/common/SoundInfo;->file:Ljava/io/File;

    .line 55
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/common/SoundInfo;->fileName:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/common/SoundInfo;->midiFile:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "midiFile"    # Z

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/catrobat/catroid/common/SoundInfo;->name:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lorg/catrobat/catroid/common/SoundInfo;->file:Ljava/io/File;

    .line 62
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/common/SoundInfo;->fileName:Ljava/lang/String;

    .line 63
    iput-boolean p3, p0, Lorg/catrobat/catroid/common/SoundInfo;->midiFile:Z

    .line 64
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lorg/catrobat/catroid/common/SoundInfo;->clone()Lorg/catrobat/catroid/common/SoundInfo;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/catrobat/catroid/common/SoundInfo;
    .locals 4

    .line 99
    :try_start_0
    new-instance v0, Lorg/catrobat/catroid/common/SoundInfo;

    iget-object v1, p0, Lorg/catrobat/catroid/common/SoundInfo;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/catrobat/catroid/common/SoundInfo;->file:Ljava/io/File;

    invoke-static {v2}, Lorg/catrobat/catroid/io/StorageOperations;->duplicateFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/common/SoundInfo;-><init>(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/catrobat/catroid/common/SoundInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Could not copy file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/catrobat/catroid/common/SoundInfo;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/catrobat/catroid/common/SoundInfo;->file:Ljava/io/File;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/catrobat/catroid/common/SoundInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getXstreamFileName()Ljava/lang/String;
    .locals 2

    .line 75
    iget-object v0, p0, Lorg/catrobat/catroid/common/SoundInfo;->file:Ljava/io/File;

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lorg/catrobat/catroid/common/SoundInfo;->fileName:Ljava/lang/String;

    return-object v0

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should be used only to deserialize the Object. You should use @getFile() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isMidiFile()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lorg/catrobat/catroid/common/SoundInfo;->midiFile:Z

    return v0
.end method

.method public setFile(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 87
    iput-object p1, p0, Lorg/catrobat/catroid/common/SoundInfo;->file:Ljava/io/File;

    .line 88
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/common/SoundInfo;->fileName:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lorg/catrobat/catroid/common/SoundInfo;->name:Ljava/lang/String;

    .line 72
    return-void
.end method
