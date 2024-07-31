.class public Lorg/catrobat/catroid/common/ProjectData;
.super Ljava/lang/Object;
.source "ProjectData.java"

# interfaces
.implements Lorg/catrobat/catroid/common/Nameable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/catrobat/catroid/common/Nameable;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lorg/catrobat/catroid/common/ProjectData;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private directory:Ljava/io/File;

.field private hasScenes:Z

.field private languageVersion:D

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/io/File;DZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "directory"    # Ljava/io/File;
    .param p3, "languageVersion"    # D
    .param p5, "hasScenes"    # Z

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/catrobat/catroid/common/ProjectData;->name:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lorg/catrobat/catroid/common/ProjectData;->directory:Ljava/io/File;

    .line 45
    iput-wide p3, p0, Lorg/catrobat/catroid/common/ProjectData;->languageVersion:D

    .line 46
    iput-boolean p5, p0, Lorg/catrobat/catroid/common/ProjectData;->hasScenes:Z

    .line 47
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 33
    check-cast p1, Lorg/catrobat/catroid/common/ProjectData;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/common/ProjectData;->compareTo(Lorg/catrobat/catroid/common/ProjectData;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/catrobat/catroid/common/ProjectData;)I
    .locals 2
    .param p1, "projectData"    # Lorg/catrobat/catroid/common/ProjectData;

    .line 75
    iget-object v0, p0, Lorg/catrobat/catroid/common/ProjectData;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/ProjectData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDirectory()Ljava/io/File;
    .locals 3

    .line 70
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/catrobat/catroid/common/FlavoredConstants;->DEFAULT_ROOT_DIRECTORY:Ljava/io/File;

    invoke-virtual {p0}, Lorg/catrobat/catroid/common/ProjectData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/catrobat/catroid/utils/FileMetaDataExtractor;->encodeSpecialCharsForFileSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLanguageVersion()D
    .locals 2

    .line 58
    iget-wide v0, p0, Lorg/catrobat/catroid/common/ProjectData;->languageVersion:D

    return-wide v0
.end method

.method public getLastUsed()J
    .locals 3

    .line 66
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/catrobat/catroid/common/ProjectData;->directory:Ljava/io/File;

    const-string v2, "code.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/catrobat/catroid/common/ProjectData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hasScenes()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lorg/catrobat/catroid/common/ProjectData;->hasScenes:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Do not set the project name through this. TODO: refactor nameable interface."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
