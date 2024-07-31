.class public final enum Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;
.super Ljava/lang/Enum;
.source "InfoDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/dialog/InfoDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0013\u0010\u0002\u001a\u00020\u00038\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;",
        "",
        "imageResource",
        "",
        "(Ljava/lang/String;II)V",
        "getImageResource",
        "()I",
        "INFO",
        "WARNING",
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
.field private static final synthetic $VALUES:[Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;

.field public static final enum INFO:Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;

.field public static final enum WARNING:Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;


# instance fields
.field private final imageResource:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;

    new-instance v1, Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;

    .line 52
    sget v2, Lorg/catrobat/paintroid/R$drawable;->ic_pocketpaint_dialog_info:I

    const-string v3, "INFO"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;->INFO:Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;

    aput-object v1, v0, v4

    new-instance v1, Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;

    sget v2, Lorg/catrobat/paintroid/R$drawable;->ic_pocketpaint_dialog_warning:I

    const-string v3, "WARNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;->WARNING:Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;->$VALUES:[Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "imageResource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;->imageResource:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;
    .locals 1

    const-class v0, Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;

    return-object p0
.end method

.method public static values()[Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;
    .locals 1

    sget-object v0, Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;->$VALUES:[Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;

    invoke-virtual {v0}, [Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;

    return-object v0
.end method


# virtual methods
.method public final getImageResource()I
    .locals 1

    .line 51
    iget v0, p0, Lorg/catrobat/paintroid/dialog/InfoDialog$DialogType;->imageResource:I

    return v0
.end method
