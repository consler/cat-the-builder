.class public final enum Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;
.super Ljava/lang/Enum;
.source "PermissionInfoDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/dialog/PermissionInfoDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PermissionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001b\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u0013\u0010\u0002\u001a\u00020\u00038\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u00020\u00038\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;",
        "",
        "iconResource",
        "",
        "messageResource",
        "(Ljava/lang/String;III)V",
        "getIconResource",
        "()I",
        "getMessageResource",
        "EXTERNAL_STORAGE",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;

.field public static final enum EXTERNAL_STORAGE:Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;


# instance fields
.field private final iconResource:I

.field private final messageResource:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;

    new-instance v1, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;

    .line 65
    sget v2, Lorg/catrobat/paintroid/R$drawable;->ic_pocketpaint_dialog_info:I

    sget v3, Lorg/catrobat/paintroid/R$string;->permission_info_external_storage_text:I

    const-string v4, "EXTERNAL_STORAGE"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5, v2, v3}, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;->EXTERNAL_STORAGE:Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;->$VALUES:[Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "iconResource"    # I
    .param p4, "messageResource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;->iconResource:I

    iput p4, p0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;->messageResource:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;
    .locals 1

    const-class v0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;

    return-object p0
.end method

.method public static values()[Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;
    .locals 1

    sget-object v0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;->$VALUES:[Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;

    invoke-virtual {v0}, [Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;

    return-object v0
.end method


# virtual methods
.method public final getIconResource()I
    .locals 1

    .line 64
    iget v0, p0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;->iconResource:I

    return v0
.end method

.method public final getMessageResource()I
    .locals 1

    .line 64
    iget v0, p0, Lorg/catrobat/paintroid/dialog/PermissionInfoDialog$PermissionType;->messageResource:I

    return v0
.end method
