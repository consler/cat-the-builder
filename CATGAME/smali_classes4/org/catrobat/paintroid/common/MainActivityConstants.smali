.class public final Lorg/catrobat/paintroid/common/MainActivityConstants;
.super Ljava/lang/Object;
.source "MainActivityConstants.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/common/MainActivityConstants$SaveImageRequestCode;,
        Lorg/catrobat/paintroid/common/MainActivityConstants$LoadImageRequestCode;,
        Lorg/catrobat/paintroid/common/MainActivityConstants$CreateFileRequestCode;,
        Lorg/catrobat/paintroid/common/MainActivityConstants$ActivityRequestCode;,
        Lorg/catrobat/paintroid/common/MainActivityConstants$PermissionRequestCode;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0005\u0003\u0004\u0005\u0006\u0007B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0008"
    }
    d2 = {
        "Lorg/catrobat/paintroid/common/MainActivityConstants;",
        "",
        "()V",
        "ActivityRequestCode",
        "CreateFileRequestCode",
        "LoadImageRequestCode",
        "PermissionRequestCode",
        "SaveImageRequestCode",
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
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
