.class public final Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$Companion;
.super Ljava/lang/Object;
.source "DataListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J*\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00072\u000c\u0010\r\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000eH\u0007J\u001e\u0010\u000f\u001a\u00020\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00072\n\u0010\r\u001a\u0006\u0012\u0002\u0008\u00030\u000eH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$Companion;",
        "",
        "()V",
        "DELETE",
        "",
        "NONE",
        "PARENT_SCRIPT_BRICK_BUNDLE_ARGUMENT",
        "",
        "TAG",
        "updateUserDataReferences",
        "",
        "oldName",
        "newName",
        "item",
        "Lorg/catrobat/catroid/formulaeditor/UserData;",
        "updateUserVariableValue",
        "value",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 505
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/fragment/DataListFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final updateUserDataReferences(Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/UserData;)V
    .locals 2
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "item"    # Lorg/catrobat/catroid/formulaeditor/UserData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 514
    invoke-static {}, Lorg/catrobat/catroid/ProjectManager;->getInstance()Lorg/catrobat/catroid/ProjectManager;

    move-result-object v0

    const-string v1, "ProjectManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/catrobat/catroid/content/Project;->updateUserDataReferences(Ljava/lang/String;Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/UserData;)V

    .line 515
    return-void
.end method

.method public final updateUserVariableValue(Ljava/lang/String;Lorg/catrobat/catroid/formulaeditor/UserData;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "item"    # Lorg/catrobat/catroid/formulaeditor/UserData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    invoke-interface {p2, p1}, Lorg/catrobat/catroid/formulaeditor/UserData;->setValue(Ljava/lang/Object;)V

    .line 520
    return-void
.end method
