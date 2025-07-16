.class public final enum Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
.super Ljava/lang/Enum;
.source "Texture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextureFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/graphics/Texture$TextureFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public static final enum Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public static final enum MipMap:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public static final enum MipMapLinearLinear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public static final enum MipMapLinearNearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public static final enum MipMapNearestLinear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public static final enum MipMapNearestNearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field public static final enum Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;


# instance fields
.field final glEnum:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 54
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const/16 v1, 0x2600

    const-string v2, "Nearest"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 57
    new-instance v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const/16 v2, 0x2601

    const-string v4, "Linear"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 60
    new-instance v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const-string v4, "MipMap"

    const/4 v6, 0x2

    const/16 v7, 0x2703

    invoke-direct {v2, v4, v6, v7}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMap:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 64
    new-instance v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const/16 v8, 0x2700

    const-string v9, "MipMapNearestNearest"

    const/4 v10, 0x3

    invoke-direct {v4, v9, v10, v8}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMapNearestNearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 68
    new-instance v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const/16 v9, 0x2701

    const-string v11, "MipMapLinearNearest"

    const/4 v12, 0x4

    invoke-direct {v8, v11, v12, v9}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMapLinearNearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 72
    new-instance v9, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const/16 v11, 0x2702

    const-string v13, "MipMapNearestLinear"

    const/4 v14, 0x5

    invoke-direct {v9, v13, v14, v11}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMapNearestLinear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 76
    new-instance v11, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const-string v13, "MipMapLinearLinear"

    const/4 v15, 0x6

    invoke-direct {v11, v13, v15, v7}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->MipMapLinearLinear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const/4 v7, 0x7

    new-array v7, v7, [Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    aput-object v0, v7, v3

    aput-object v1, v7, v5

    aput-object v2, v7, v6

    aput-object v4, v7, v10

    aput-object v8, v7, v12

    aput-object v9, v7, v14

    aput-object v11, v7, v15

    .line 52
    sput-object v7, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->$VALUES:[Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput p3, p0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->glEnum:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .locals 1

    .line 52
    const-class v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .locals 1

    .line 52
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->$VALUES:[Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    return-object v0
.end method


# virtual methods
.method public getGLEnum()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->glEnum:I

    return v0
.end method

.method public isMipMap()Z
    .locals 2

    .line 85
    iget v0, p0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->glEnum:I

    const/16 v1, 0x2600

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2601

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
