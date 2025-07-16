.class public final Lorg/catrobat/paintroid/dialog/SaveInformationDialog$Companion;
.super Ljava/lang/Object;
.source "SaveInformationDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/dialog/SaveInformationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/catrobat/paintroid/dialog/SaveInformationDialog$Companion;",
        "",
        "()V",
        "newInstance",
        "Lorg/catrobat/paintroid/dialog/SaveInformationDialog;",
        "permissionCode",
        "",
        "imageNumber",
        "isStandard",
        "",
        "isExport",
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

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(IIZZ)Lorg/catrobat/paintroid/dialog/SaveInformationDialog;
    .locals 3

    const-string v0, "image"

    if-eqz p3, :cond_0

    .line 74
    sget-object p3, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    sput-object v0, Lorg/catrobat/paintroid/FileIO;->filename:Ljava/lang/String;

    .line 75
    sget-object p3, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object p3, Lorg/catrobat/paintroid/FileIO;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 76
    sget-object p3, Lorg/catrobat/paintroid/FileIO;->INSTANCE:Lorg/catrobat/paintroid/FileIO;

    sget-object p3, Lorg/catrobat/paintroid/FileIO$FileType;->PNG:Lorg/catrobat/paintroid/FileIO$FileType;

    sput-object p3, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    .line 78
    :cond_0
    new-instance p3, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;

    invoke-direct {p3}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;-><init>()V

    .line 79
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 80
    sget-object v2, Lorg/catrobat/paintroid/FileIO;->filename:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "setName"

    if-eqz v0, :cond_1

    .line 81
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->filename:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_1
    sget-object p2, Lorg/catrobat/paintroid/FileIO;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p2, "permission"

    .line 85
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "isExport"

    .line 86
    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 79
    invoke-virtual {p3, v1}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->setArguments(Landroid/os/Bundle;)V

    return-object p3
.end method
