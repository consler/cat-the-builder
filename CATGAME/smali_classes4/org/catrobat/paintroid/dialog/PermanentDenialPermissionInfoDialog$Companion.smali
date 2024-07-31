.class public final Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog$Companion;
.super Ljava/lang/Object;
.source "PermanentDenialPermissionInfoDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog$Companion;",
        "",
        "()V",
        "newInstance",
        "Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;",
        "context",
        "",
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

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 47
    invoke-direct {p0}, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Ljava/lang/String;)Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;
    .locals 6
    .param p1, "context"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v1, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;

    invoke-direct {v1}, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;-><init>()V

    move-object v2, v1

    .local v2, "$this$apply":Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;
    const/4 v3, 0x0

    .line 51
    .local v3, "$i$a$-apply-PermanentDenialPermissionInfoDialog$Companion$newInstance$1":I
    const/4 v4, 0x1

    new-array v4, v4, [Lkotlin/Pair;

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v4}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;->setArguments(Landroid/os/Bundle;)V

    .line 52
    nop

    .line 50
    .end local v2    # "$this$apply":Lorg/catrobat/paintroid/dialog/PermanentDenialPermissionInfoDialog;
    .end local v3    # "$i$a$-apply-PermanentDenialPermissionInfoDialog$Companion$newInstance$1":I
    nop

    .line 52
    return-object v1
.end method
