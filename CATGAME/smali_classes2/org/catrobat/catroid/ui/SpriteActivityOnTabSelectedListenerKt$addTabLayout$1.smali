.class final synthetic Lorg/catrobat/catroid/ui/SpriteActivityOnTabSelectedListenerKt$addTabLayout$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SpriteActivityOnTabSelectedListener.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/ui/SpriteActivityOnTabSelectedListenerKt;->addTabLayout(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "p1",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 7

    const-class v3, Lorg/catrobat/catroid/ui/SpriteActivityOnTabSelectedListenerKt;

    const/4 v1, 0x1

    const-string v4, "loadFragment"

    const-string v5, "loadFragment(Lorg/catrobat/catroid/ui/SpriteActivity;I)V"

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/SpriteActivityOnTabSelectedListenerKt$addTabLayout$1;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 1
    .param p1, "p1"    # I

    iget-object v0, p0, Lorg/catrobat/catroid/ui/SpriteActivityOnTabSelectedListenerKt$addTabLayout$1;->receiver:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Lorg/catrobat/catroid/ui/SpriteActivity;

    .line 76
    invoke-static {v0, p1}, Lorg/catrobat/catroid/ui/SpriteActivityOnTabSelectedListenerKt;->loadFragment(Lorg/catrobat/catroid/ui/SpriteActivity;I)V

    return-void
.end method
