.class Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder$1;
.super Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;
.source "TextInputDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;->createUniqueNameProvider(I)Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    .line 115
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder$1;->this$0:Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;

    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public isUnique(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newName"    # Ljava/lang/String;

    .line 118
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/Project;->getUserList(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/UserList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/catrobat/catroid/content/Sprite;->getUserList(Ljava/lang/String;)Lorg/catrobat/catroid/formulaeditor/UserList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
