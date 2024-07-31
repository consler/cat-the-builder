.class public final Lorg/catrobat/catroid/io/BackpackSerializer;
.super Ljava/lang/Object;
.source "BackpackSerializer.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final backpackFile:Ljava/io/File;

.field private backpackGson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lorg/catrobat/catroid/io/BackpackSerializer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/io/BackpackSerializer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "backpackFile"    # Ljava/io/File;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/catrobat/catroid/io/BackpackSerializer;->backpackFile:Ljava/io/File;

    .line 52
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->enableComplexMapKeySerialization()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 53
    .local v0, "gsonBuilder":Lcom/google/gson/GsonBuilder;
    const-class v1, Lorg/catrobat/catroid/content/Script;

    new-instance v2, Lorg/catrobat/catroid/io/BackpackScriptSerializerAndDeserializer;

    invoke-direct {v2}, Lorg/catrobat/catroid/io/BackpackScriptSerializerAndDeserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 55
    const-class v1, Lorg/catrobat/catroid/content/bricks/Brick;

    new-instance v2, Lorg/catrobat/catroid/io/BackpackInterfaceSerializerAndDeserializer;

    invoke-direct {v2, p1}, Lorg/catrobat/catroid/io/BackpackInterfaceSerializerAndDeserializer;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 57
    const-class v1, Lorg/catrobat/catroid/userbrick/UserDefinedBrickData;

    new-instance v2, Lorg/catrobat/catroid/io/BackpackInterfaceSerializerAndDeserializer;

    invoke-direct {v2, p1}, Lorg/catrobat/catroid/io/BackpackInterfaceSerializerAndDeserializer;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 59
    const-class v1, Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;

    new-instance v2, Lorg/catrobat/catroid/io/BackpackFormulaFieldSerializerAndDeserializer;

    invoke-direct {v2, p1}, Lorg/catrobat/catroid/io/BackpackFormulaFieldSerializerAndDeserializer;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 61
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/io/BackpackSerializer;->backpackGson:Lcom/google/gson/Gson;

    .line 62
    return-void
.end method


# virtual methods
.method public loadBackpack()Lorg/catrobat/catroid/common/Backpack;
    .locals 3

    .line 88
    iget-object v0, p0, Lorg/catrobat/catroid/io/BackpackSerializer;->backpackFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lorg/catrobat/catroid/common/Backpack;

    invoke-direct {v0}, Lorg/catrobat/catroid/common/Backpack;-><init>()V

    return-object v0

    .line 93
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    iget-object v2, p0, Lorg/catrobat/catroid/io/BackpackSerializer;->backpackFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 94
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackpackSerializer;->backpackGson:Lcom/google/gson/Gson;

    const-class v2, Lorg/catrobat/catroid/common/Backpack;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/common/Backpack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 95
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/io/FileNotFoundException;

    if-nez v1, :cond_1

    .line 97
    iget-object v1, p0, Lorg/catrobat/catroid/io/BackpackSerializer;->backpackFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 99
    :cond_1
    sget-object v1, Lorg/catrobat/catroid/io/BackpackSerializer;->TAG:Ljava/lang/String;

    const-string v2, "Cannot load Backpack. Creating new Backpack File."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    new-instance v1, Lorg/catrobat/catroid/common/Backpack;

    invoke-direct {v1}, Lorg/catrobat/catroid/common/Backpack;-><init>()V

    return-object v1
.end method

.method public saveBackpack(Lorg/catrobat/catroid/common/Backpack;)Z
    .locals 7
    .param p1, "backpack"    # Lorg/catrobat/catroid/common/Backpack;

    .line 65
    const-string v0, "Cannot close Buffered Writer"

    const/4 v1, 0x0

    .line 66
    .local v1, "writer":Ljava/io/FileWriter;
    iget-object v2, p0, Lorg/catrobat/catroid/io/BackpackSerializer;->backpackGson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "json":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lorg/catrobat/catroid/io/BackpackSerializer;->backpackFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 70
    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lorg/catrobat/catroid/io/BackpackSerializer;->backpackFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v1, v3

    .line 71
    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    const/4 v3, 0x1

    .line 77
    nop

    .line 79
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    goto :goto_0

    .line 80
    :catch_0
    move-exception v4

    .line 81
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lorg/catrobat/catroid/io/BackpackSerializer;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    return v3

    .line 77
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 73
    :catch_1
    move-exception v3

    .line 74
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v4, Lorg/catrobat/catroid/io/BackpackSerializer;->TAG:Ljava/lang/String;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    const/4 v4, 0x0

    .line 77
    if-eqz v1, :cond_0

    .line 79
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 82
    goto :goto_1

    .line 80
    :catch_2
    move-exception v5

    .line 81
    .local v5, "e":Ljava/io/IOException;
    sget-object v6, Lorg/catrobat/catroid/io/BackpackSerializer;->TAG:Ljava/lang/String;

    invoke-static {v6, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .end local v5    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    return v4

    .line 77
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    if-eqz v1, :cond_1

    .line 79
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 82
    goto :goto_3

    .line 80
    :catch_3
    move-exception v4

    .line 81
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v5, Lorg/catrobat/catroid/io/BackpackSerializer;->TAG:Ljava/lang/String;

    invoke-static {v5, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    throw v3
.end method
