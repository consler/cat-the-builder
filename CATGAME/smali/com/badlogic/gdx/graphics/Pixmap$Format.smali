.class public final enum Lcom/badlogic/gdx/graphics/Pixmap$Format;
.super Ljava/lang/Enum;
.source "Pixmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/Pixmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/graphics/Pixmap$Format;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field public static final enum Alpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field public static final enum Intensity:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field public static final enum LuminanceAlpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field public static final enum RGB565:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field public static final enum RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field public static final enum RGBA4444:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field public static final enum RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 45
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const-string v1, "Alpha"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Pixmap$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->Alpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const-string v1, "Intensity"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/graphics/Pixmap$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->Intensity:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const-string v1, "LuminanceAlpha"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/graphics/Pixmap$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->LuminanceAlpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const-string v1, "RGB565"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/badlogic/gdx/graphics/Pixmap$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB565:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const-string v1, "RGBA4444"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/badlogic/gdx/graphics/Pixmap$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA4444:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const-string v1, "RGB888"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/badlogic/gdx/graphics/Pixmap$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const-string v1, "RGBA8888"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/badlogic/gdx/graphics/Pixmap$Format;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 44
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/badlogic/gdx/graphics/Pixmap$Format;

    sget-object v9, Lcom/badlogic/gdx/graphics/Pixmap$Format;->Alpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    aput-object v9, v1, v2

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->Intensity:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    aput-object v2, v1, v3

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->LuminanceAlpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    aput-object v2, v1, v4

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB565:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    aput-object v2, v1, v5

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA4444:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    aput-object v2, v1, v6

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->$VALUES:[Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromGdx2DPixmapFormat(I)Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .locals 3
    .param p0, "format"    # I

    .line 59
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->Alpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0

    .line 60
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->LuminanceAlpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0

    .line 61
    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB565:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0

    .line 62
    :cond_2
    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA4444:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0

    .line 63
    :cond_3
    const/4 v0, 0x3

    if-ne p0, v0, :cond_4

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0

    .line 64
    :cond_4
    const/4 v0, 0x4

    if-ne p0, v0, :cond_5

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0

    .line 65
    :cond_5
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Gdx2DPixmap Format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toGdx2DPixmapFormat(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I
    .locals 3
    .param p0, "format"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 48
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->Alpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    .line 49
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->Intensity:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    if-ne p0, v0, :cond_1

    return v1

    .line 50
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->LuminanceAlpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    if-ne p0, v0, :cond_2

    const/4 v0, 0x2

    return v0

    .line 51
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB565:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    if-ne p0, v0, :cond_3

    const/4 v0, 0x5

    return v0

    .line 52
    :cond_3
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA4444:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    if-ne p0, v0, :cond_4

    const/4 v0, 0x6

    return v0

    .line 53
    :cond_4
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGB888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    if-ne p0, v0, :cond_5

    const/4 v0, 0x3

    return v0

    .line 54
    :cond_5
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x4

    return v0

    .line 55
    :cond_6
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toGlFormat(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I
    .locals 1
    .param p0, "format"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 69
    invoke-static {p0}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->toGdx2DPixmapFormat(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->toGlFormat(I)I

    move-result v0

    return v0
.end method

.method public static toGlType(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I
    .locals 1
    .param p0, "format"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 73
    invoke-static {p0}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->toGdx2DPixmapFormat(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->toGlType(I)I

    move-result v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 44
    const-class v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .locals 1

    .line 44
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->$VALUES:[Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/Pixmap$Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0
.end method
