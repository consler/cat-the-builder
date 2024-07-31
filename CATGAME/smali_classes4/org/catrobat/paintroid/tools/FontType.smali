.class public final enum Lorg/catrobat/paintroid/tools/FontType;
.super Ljava/lang/Enum;
.source "FontType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/paintroid/tools/FontType;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/FontType;",
        "",
        "nameResource",
        "",
        "(Ljava/lang/String;II)V",
        "getNameResource",
        "()I",
        "SANS_SERIF",
        "SERIF",
        "MONOSPACE",
        "STC",
        "DUBAI",
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
.field private static final synthetic $VALUES:[Lorg/catrobat/paintroid/tools/FontType;

.field public static final enum DUBAI:Lorg/catrobat/paintroid/tools/FontType;

.field public static final enum MONOSPACE:Lorg/catrobat/paintroid/tools/FontType;

.field public static final enum SANS_SERIF:Lorg/catrobat/paintroid/tools/FontType;

.field public static final enum SERIF:Lorg/catrobat/paintroid/tools/FontType;

.field public static final enum STC:Lorg/catrobat/paintroid/tools/FontType;


# instance fields
.field private final nameResource:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/catrobat/paintroid/tools/FontType;

    new-instance v1, Lorg/catrobat/paintroid/tools/FontType;

    .line 7
    sget v2, Lorg/catrobat/paintroid/R$string;->text_tool_dialog_font_sans_serif:I

    const-string v3, "SANS_SERIF"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lorg/catrobat/paintroid/tools/FontType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/catrobat/paintroid/tools/FontType;->SANS_SERIF:Lorg/catrobat/paintroid/tools/FontType;

    aput-object v1, v0, v4

    new-instance v1, Lorg/catrobat/paintroid/tools/FontType;

    .line 8
    sget v2, Lorg/catrobat/paintroid/R$string;->text_tool_dialog_font_serif:I

    const-string v3, "SERIF"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lorg/catrobat/paintroid/tools/FontType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/catrobat/paintroid/tools/FontType;->SERIF:Lorg/catrobat/paintroid/tools/FontType;

    aput-object v1, v0, v4

    new-instance v1, Lorg/catrobat/paintroid/tools/FontType;

    .line 9
    sget v2, Lorg/catrobat/paintroid/R$string;->text_tool_dialog_font_monospace:I

    const-string v3, "MONOSPACE"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4, v2}, Lorg/catrobat/paintroid/tools/FontType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/catrobat/paintroid/tools/FontType;->MONOSPACE:Lorg/catrobat/paintroid/tools/FontType;

    aput-object v1, v0, v4

    new-instance v1, Lorg/catrobat/paintroid/tools/FontType;

    .line 10
    sget v2, Lorg/catrobat/paintroid/R$string;->text_tool_dialog_font_arabic_stc:I

    const-string v3, "STC"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4, v2}, Lorg/catrobat/paintroid/tools/FontType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/catrobat/paintroid/tools/FontType;->STC:Lorg/catrobat/paintroid/tools/FontType;

    aput-object v1, v0, v4

    new-instance v1, Lorg/catrobat/paintroid/tools/FontType;

    .line 11
    sget v2, Lorg/catrobat/paintroid/R$string;->text_tool_dialog_font_dubai:I

    const-string v3, "DUBAI"

    const/4 v4, 0x4

    invoke-direct {v1, v3, v4, v2}, Lorg/catrobat/paintroid/tools/FontType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/catrobat/paintroid/tools/FontType;->DUBAI:Lorg/catrobat/paintroid/tools/FontType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/catrobat/paintroid/tools/FontType;->$VALUES:[Lorg/catrobat/paintroid/tools/FontType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "nameResource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/catrobat/paintroid/tools/FontType;->nameResource:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/paintroid/tools/FontType;
    .locals 1

    const-class v0, Lorg/catrobat/paintroid/tools/FontType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/catrobat/paintroid/tools/FontType;

    return-object p0
.end method

.method public static values()[Lorg/catrobat/paintroid/tools/FontType;
    .locals 1

    sget-object v0, Lorg/catrobat/paintroid/tools/FontType;->$VALUES:[Lorg/catrobat/paintroid/tools/FontType;

    invoke-virtual {v0}, [Lorg/catrobat/paintroid/tools/FontType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/paintroid/tools/FontType;

    return-object v0
.end method


# virtual methods
.method public final getNameResource()I
    .locals 1

    .line 6
    iget v0, p0, Lorg/catrobat/paintroid/tools/FontType;->nameResource:I

    return v0
.end method
