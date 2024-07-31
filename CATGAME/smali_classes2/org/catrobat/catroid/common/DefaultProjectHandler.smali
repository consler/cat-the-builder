.class public final Lorg/catrobat/catroid/common/DefaultProjectHandler;
.super Ljava/lang/Object;
.source "DefaultProjectHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;
    }
.end annotation


# static fields
.field private static instance:Lorg/catrobat/catroid/common/DefaultProjectHandler;


# instance fields
.field private defaultProjectCreator:Lorg/catrobat/catroid/common/defaultprojectcreators/ProjectCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lorg/catrobat/catroid/common/DefaultProjectHandler;->instance:Lorg/catrobat/catroid/common/DefaultProjectHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;->PROJECT_CREATOR_DEFAULT:Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/common/DefaultProjectHandler;->setDefaultProjectCreator(Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;)V

    .line 56
    return-void
.end method

.method public static createAndSaveDefaultProject(Landroid/content/Context;)Lorg/catrobat/catroid/content/Project;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-static {}, Lorg/catrobat/catroid/common/DefaultProjectHandler;->getInstance()Lorg/catrobat/catroid/common/DefaultProjectHandler;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/common/DefaultProjectHandler;->defaultProjectCreator:Lorg/catrobat/catroid/common/defaultprojectcreators/ProjectCreator;

    invoke-virtual {v0}, Lorg/catrobat/catroid/common/defaultprojectcreators/ProjectCreator;->getDefaultProjectNameID()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/catrobat/catroid/common/DefaultProjectHandler;->createAndSaveDefaultProject(Ljava/lang/String;Landroid/content/Context;Z)Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    return-object v1
.end method

.method public static createAndSaveDefaultProject(Ljava/lang/String;Landroid/content/Context;Z)Lorg/catrobat/catroid/content/Project;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "landscapeMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-static {}, Lorg/catrobat/catroid/common/DefaultProjectHandler;->getInstance()Lorg/catrobat/catroid/common/DefaultProjectHandler;

    move-result-object v0

    iget-object v0, v0, Lorg/catrobat/catroid/common/DefaultProjectHandler;->defaultProjectCreator:Lorg/catrobat/catroid/common/defaultprojectcreators/ProjectCreator;

    invoke-virtual {v0, p0, p1, p2}, Lorg/catrobat/catroid/common/defaultprojectcreators/ProjectCreator;->createDefaultProject(Ljava/lang/String;Landroid/content/Context;Z)Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    return-object v0
.end method

.method public static createAndSaveEmptyProject(Ljava/lang/String;Landroid/content/Context;ZZ)Lorg/catrobat/catroid/content/Project;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "landscapeMode"    # Z
    .param p3, "isCastEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v0, Lorg/catrobat/catroid/content/Project;

    invoke-direct {v0, p1, p0, p2, p3}, Lorg/catrobat/catroid/content/Project;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 70
    .local v0, "project":Lorg/catrobat/catroid/content/Project;
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    invoke-static {}, Lorg/catrobat/catroid/io/XstreamSerializer;->getInstance()Lorg/catrobat/catroid/io/XstreamSerializer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/catrobat/catroid/io/XstreamSerializer;->saveProject(Lorg/catrobat/catroid/content/Project;)Z

    .line 77
    return-object v0

    .line 71
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create new project at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", directory already exists."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance()Lorg/catrobat/catroid/common/DefaultProjectHandler;
    .locals 1

    .line 48
    sget-object v0, Lorg/catrobat/catroid/common/DefaultProjectHandler;->instance:Lorg/catrobat/catroid/common/DefaultProjectHandler;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lorg/catrobat/catroid/common/DefaultProjectHandler;

    invoke-direct {v0}, Lorg/catrobat/catroid/common/DefaultProjectHandler;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/common/DefaultProjectHandler;->instance:Lorg/catrobat/catroid/common/DefaultProjectHandler;

    .line 51
    :cond_0
    sget-object v0, Lorg/catrobat/catroid/common/DefaultProjectHandler;->instance:Lorg/catrobat/catroid/common/DefaultProjectHandler;

    return-object v0
.end method


# virtual methods
.method public setDefaultProjectCreator(Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;)V
    .locals 2
    .param p1, "type"    # Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;

    .line 81
    sget-object v0, Lorg/catrobat/catroid/common/DefaultProjectHandler$1;->$SwitchMap$org$catrobat$catroid$common$DefaultProjectHandler$ProjectCreatorType:[I

    invoke-virtual {p1}, Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    new-instance v0, Lorg/catrobat/catroid/common/defaultprojectcreators/ChromeCastProjectCreator;

    invoke-direct {v0}, Lorg/catrobat/catroid/common/defaultprojectcreators/ChromeCastProjectCreator;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/common/DefaultProjectHandler;->defaultProjectCreator:Lorg/catrobat/catroid/common/defaultprojectcreators/ProjectCreator;

    goto :goto_0

    .line 83
    :cond_1
    new-instance v0, Lorg/catrobat/catroid/common/defaultprojectcreators/DefaultExampleProject;

    invoke-direct {v0}, Lorg/catrobat/catroid/common/defaultprojectcreators/DefaultExampleProject;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/common/DefaultProjectHandler;->defaultProjectCreator:Lorg/catrobat/catroid/common/defaultprojectcreators/ProjectCreator;

    .line 84
    nop

    .line 91
    :goto_0
    return-void
.end method
