.class public final Lorg/catrobat/paintroid/dialog/InfoDialog$Companion;
.super Ljava/lang/Object;
.source "InfoDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/dialog/InfoDialog;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0001\u0010\t\u001a\u00020\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/catrobat/paintroid/dialog/InfoDialog$Companion;",
        "",
        "()V",
        "newInstance",
        "Lorg/catrobat/paintroid/dialog/InfoDialog;",
        "dialogType",
        "Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;",
        "messageResource",
        "",
        "titleResource",
        "Paintroid_release"
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

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 55
    invoke-direct {p0}, Lorg/catrobat/paintroid/dialog/InfoDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;II)Lorg/catrobat/paintroid/dialog/InfoDialog;
    .locals 6
    .param p1, "dialogType"    # Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;
    .param p2, "messageResource"    # I
    .param p3, "titleResource"    # I

    const-string v0, "dialogType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lorg/catrobat/paintroid/dialog/InfoDialog;

    invoke-direct {v0}, Lorg/catrobat/paintroid/dialog/InfoDialog;-><init>()V

    move-object v1, v0

    .local v1, "$this$apply":Lorg/catrobat/paintroid/dialog/InfoDialog;
    const/4 v2, 0x0

    .line 61
    .local v2, "$i$a$-apply-InfoDialog$Companion$newInstance$1":I
    const/4 v3, 0x3

    new-array v3, v3, [Lkotlin/Pair;

    .line 62
    invoke-virtual {p1}, Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;->getImageResource()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "drawableResource"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 63
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "messageResource"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 64
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "titleResource"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 61
    invoke-static {v3}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/catrobat/paintroid/dialog/InfoDialog;->setArguments(Landroid/os/Bundle;)V

    .line 66
    nop

    .line 60
    .end local v1    # "$this$apply":Lorg/catrobat/paintroid/dialog/InfoDialog;
    .end local v2    # "$i$a$-apply-InfoDialog$Companion$newInstance$1":I
    nop

    .line 66
    return-object v0
.end method
