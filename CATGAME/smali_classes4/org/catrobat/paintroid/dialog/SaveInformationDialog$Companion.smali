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
    bv = {
        0x1,
        0x0,
        0x3
    }
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

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 67
    invoke-direct {p0}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(IIZZ)Lorg/catrobat/paintroid/dialog/SaveInformationDialog;
    .locals 9
    .param p1, "permissionCode"    # I
    .param p2, "imageNumber"    # I
    .param p3, "isStandard"    # Z
    .param p4, "isExport"    # Z

    .line 74
    const-string v0, "image"

    if-eqz p3, :cond_0

    .line 75
    const/4 v1, 0x0

    sput-boolean v1, Lorg/catrobat/paintroid/FileIO;->isCatrobatImage:Z

    .line 76
    sput-object v0, Lorg/catrobat/paintroid/FileIO;->filename:Ljava/lang/String;

    .line 77
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v1, Lorg/catrobat/paintroid/FileIO;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 78
    sget-object v1, Lorg/catrobat/paintroid/FileIO$FileType;->PNG:Lorg/catrobat/paintroid/FileIO$FileType;

    sput-object v1, Lorg/catrobat/paintroid/FileIO;->fileType:Lorg/catrobat/paintroid/FileIO$FileType;

    .line 80
    :cond_0
    new-instance v1, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;

    invoke-direct {v1}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;-><init>()V

    move-object v2, v1

    .local v2, "$this$apply":Lorg/catrobat/paintroid/dialog/SaveInformationDialog;
    const/4 v3, 0x0

    .line 81
    .local v3, "$i$a$-apply-SaveInformationDialog$Companion$newInstance$1":I
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v5, v4

    .local v5, "$this$apply":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 82
    .local v6, "$i$a$-apply-SaveInformationDialog$Companion$newInstance$1$1":I
    sget-object v7, Lorg/catrobat/paintroid/FileIO;->filename:Ljava/lang/String;

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v7, "setName"

    if-eqz v0, :cond_1

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lorg/catrobat/paintroid/FileIO;->filename:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_1
    sget-object v0, Lorg/catrobat/paintroid/FileIO;->filename:Ljava/lang/String;

    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_0
    nop

    .line 87
    const-string v0, "permission"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    const-string v0, "isExport"

    invoke-virtual {v5, v0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    nop

    .end local v5    # "$this$apply":Landroid/os/Bundle;
    .end local v6    # "$i$a$-apply-SaveInformationDialog$Companion$newInstance$1$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 81
    invoke-virtual {v2, v4}, Lorg/catrobat/paintroid/dialog/SaveInformationDialog;->setArguments(Landroid/os/Bundle;)V

    .line 90
    nop

    .line 80
    .end local v2    # "$this$apply":Lorg/catrobat/paintroid/dialog/SaveInformationDialog;
    .end local v3    # "$i$a$-apply-SaveInformationDialog$Companion$newInstance$1":I
    return-object v1
.end method
