.class public final enum Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;
.super Ljava/lang/Enum;
.source "DrawableStyle.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;",
        "",
        "(Ljava/lang/String;I)V",
        "STROKE",
        "FILL",
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


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

.field public static final enum FILL:Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

.field public static final enum STROKE:Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;


# direct methods
.method private static final synthetic $values()[Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    const/4 v1, 0x0

    sget-object v2, Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;->STROKE:Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;->FILL:Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    const-string v1, "STROKE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;->STROKE:Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    new-instance v0, Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    const-string v1, "FILL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;->FILL:Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    invoke-static {}, Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;->$values()[Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    move-result-object v0

    sput-object v0, Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;->$VALUES:[Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;
    .locals 1

    const-class v0, Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    return-object p0
.end method

.method public static values()[Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;
    .locals 1

    sget-object v0, Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;->$VALUES:[Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/paintroid/tools/drawable/DrawableStyle;

    return-object v0
.end method
