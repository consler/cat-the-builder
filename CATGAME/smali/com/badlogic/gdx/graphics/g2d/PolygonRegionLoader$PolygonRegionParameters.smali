.class public Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;
.super Lcom/badlogic/gdx/assets/AssetLoaderParameters;
.source "PolygonRegionLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolygonRegionParameters"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/AssetLoaderParameters<",
        "Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;",
        ">;"
    }
.end annotation


# instance fields
.field public readerBuffer:I

.field public textureExtensions:[Ljava/lang/String;

.field public texturePrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 15

    .line 41
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetLoaderParameters;-><init>()V

    const-string v0, "i "

    .line 44
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;->texturePrefix:Ljava/lang/String;

    const/16 v0, 0x400

    .line 48
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;->readerBuffer:I

    const-string v1, "png"

    const-string v2, "PNG"

    const-string v3, "jpeg"

    const-string v4, "JPEG"

    const-string v5, "jpg"

    const-string v6, "JPG"

    const-string v7, "cim"

    const-string v8, "CIM"

    const-string v9, "etc1"

    const-string v10, "ETC1"

    const-string v11, "ktx"

    const-string v12, "KTX"

    const-string v13, "zktx"

    const-string v14, "ZKTX"

    .line 51
    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;->textureExtensions:[Ljava/lang/String;

    return-void
.end method
