.class public final Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$Companion;
.super Ljava/lang/Object;
.source "PermissionInfoDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J+\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0007\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$Companion;",
        "",
        "()V",
        "newInstance",
        "Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;",
        "permissionType",
        "Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;",
        "permissions",
        "",
        "",
        "requestCode",
        "",
        "(Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;[Ljava/lang/String;I)Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;",
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;[Ljava/lang/String;I)Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "permissionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;

    invoke-direct {v0}, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;-><init>()V

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "permissionTypeKey"

    .line 73
    invoke-static {v2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "permissionsKey"

    .line 74
    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "requestCodeKey"

    .line 75
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    .line 72
    invoke-static {v1}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
