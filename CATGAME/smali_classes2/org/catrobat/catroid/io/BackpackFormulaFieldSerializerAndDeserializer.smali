.class public Lorg/catrobat/catroid/io/BackpackFormulaFieldSerializerAndDeserializer;
.super Lorg/catrobat/catroid/io/BackpackInterfaceSerializerAndDeserializer;
.source "BackpackFormulaFieldSerializerAndDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/catrobat/catroid/io/BackpackInterfaceSerializerAndDeserializer<",
        "Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .line 37
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/io/BackpackInterfaceSerializerAndDeserializer;-><init>(Ljava/io/File;)V

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lorg/catrobat/catroid/io/BackpackFormulaFieldSerializerAndDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;
    .locals 1
    .param p1, "json"    # Lcom/google/gson/JsonElement;
    .param p2, "interfaceType"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonDeserializationContext;

    .line 42
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    move-result-object v0

    return-object v0

    .line 45
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/catrobat/catroid/io/BackpackInterfaceSerializerAndDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    return-object v0
.end method
