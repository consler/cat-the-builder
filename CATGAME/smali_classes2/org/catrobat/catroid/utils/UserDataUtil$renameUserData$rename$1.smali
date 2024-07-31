.class final Lorg/catrobat/catroid/utils/UserDataUtil$renameUserData$rename$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UserDataUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/utils/UserDataUtil;->renameUserData(Lorg/catrobat/catroid/formulaeditor/UserData;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/catrobat/catroid/formulaeditor/UserData<",
        "*>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "data",
        "Lorg/catrobat/catroid/formulaeditor/UserData;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $name:Ljava/lang/String;

.field final synthetic $previousName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/utils/UserDataUtil$renameUserData$rename$1;->$previousName:Ljava/lang/String;

    iput-object p2, p0, Lorg/catrobat/catroid/utils/UserDataUtil$renameUserData$rename$1;->$name:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, Lorg/catrobat/catroid/formulaeditor/UserData;

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/utils/UserDataUtil$renameUserData$rename$1;->invoke(Lorg/catrobat/catroid/formulaeditor/UserData;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/catrobat/catroid/formulaeditor/UserData;)V
    .locals 2
    .param p1, "data"    # Lorg/catrobat/catroid/formulaeditor/UserData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/formulaeditor/UserData<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-interface {p1}, Lorg/catrobat/catroid/formulaeditor/UserData;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/utils/UserDataUtil$renameUserData$rename$1;->$previousName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lorg/catrobat/catroid/utils/UserDataUtil$renameUserData$rename$1;->$name:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/catrobat/catroid/formulaeditor/UserData;->setName(Ljava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method
