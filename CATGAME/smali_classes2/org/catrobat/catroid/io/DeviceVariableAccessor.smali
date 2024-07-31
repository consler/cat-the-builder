.class public final Lorg/catrobat/catroid/io/DeviceVariableAccessor;
.super Lorg/catrobat/catroid/io/DeviceUserDataAccessor;
.source "DeviceVariableAccessor.java"


# static fields
.field private static final LOCK:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/io/DeviceVariableAccessor;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "projectDirectory"    # Ljava/io/File;

    .line 41
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;-><init>(Ljava/io/File;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected getDeviceFileName()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "DeviceVariables.json"

    return-object v0
.end method

.method protected getLock()Ljava/lang/Object;
    .locals 1

    .line 46
    sget-object v0, Lorg/catrobat/catroid/io/DeviceVariableAccessor;->LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method public getUserData(Lorg/catrobat/catroid/content/Project;)Ljava/util/List;
    .locals 2
    .param p1, "project"    # Lorg/catrobat/catroid/content/Project;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/content/Project;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/formulaeditor/UserData;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v0, "projectVariables":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserVariable;>;"
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getUserVariables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getMultiplayerVariables()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 64
    return-object v0
.end method

.method public getUserData(Lorg/catrobat/catroid/content/Sprite;)Ljava/util/List;
    .locals 1
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/content/Sprite;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/formulaeditor/UserData;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Sprite;->getUserVariables()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
