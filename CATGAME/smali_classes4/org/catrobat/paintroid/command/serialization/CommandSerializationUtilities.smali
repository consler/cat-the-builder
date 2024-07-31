.class public final Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;
.super Ljava/lang/Object;
.source "CommandSerializationUtilities.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities$NotCatrobatImageException;,
        Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommandSerializationUtilities.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommandSerializationUtilities.kt\norg/catrobat/paintroid/command/serialization/CommandSerializationUtilities\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,243:1\n181#2,2:244\n*E\n*S KotlinDebug\n*F\n+ 1 CommandSerializationUtilities.kt\norg/catrobat/paintroid/command/serialization/CommandSerializationUtilities\n*L\n145#1,2:244\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 #2\u00020\u0001:\u0002#$B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0015\u001a\u00020\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0002J\u0010\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u001d\u001a\u00020\u001eJ\u000e\u0010\u001f\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020 J\u0010\u0010!\u001a\u00020\u00182\u0006\u0010\u0015\u001a\u00020\"H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR>\u0010\u000b\u001a2\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\r\u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000e0\u000cj\u0018\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\r\u0012\n\u0012\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u000e`\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;",
        "",
        "activityContext",
        "Landroid/content/Context;",
        "commandManager",
        "Lorg/catrobat/paintroid/command/CommandManager;",
        "(Landroid/content/Context;Lorg/catrobat/paintroid/command/CommandManager;)V",
        "kryo",
        "Lcom/esotericsoftware/kryo/Kryo;",
        "getKryo",
        "()Lcom/esotericsoftware/kryo/Kryo;",
        "registerMap",
        "Ljava/util/LinkedHashMap;",
        "Ljava/lang/Class;",
        "Lorg/catrobat/paintroid/command/serialization/VersionSerializer;",
        "Lkotlin/collections/LinkedHashMap;",
        "readFromFile",
        "Lorg/catrobat/paintroid/model/CommandManagerModel;",
        "uri",
        "Landroid/net/Uri;",
        "readFromInternalMemory",
        "stream",
        "Ljava/io/FileInputStream;",
        "registerClasses",
        "",
        "setRegisterMapVersion",
        "version",
        "",
        "writeToFile",
        "fileName",
        "",
        "writeToInternalMemory",
        "Ljava/io/FileOutputStream;",
        "writeToStream",
        "Ljava/io/OutputStream;",
        "Companion",
        "NotCatrobatImageException",
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
.field public static final CURRENT_IMAGE_VERSION:I = 0x1

.field public static final Companion:Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities$Companion;

.field public static final MAGIC_VALUE:Ljava/lang/String; = "CATROBAT"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activityContext:Landroid/content/Context;

.field private final commandManager:Lorg/catrobat/paintroid/command/CommandManager;

.field private final kryo:Lcom/esotericsoftware/kryo/Kryo;

.field private final registerMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/catrobat/paintroid/command/serialization/VersionSerializer<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->Companion:Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities$Companion;

    .line 82
    const-class v0, Lorg/catrobat/paintroid/ui/DrawingSurfaceThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/catrobat/paintroid/command/CommandManager;)V
    .locals 1
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "commandManager"    # Lorg/catrobat/paintroid/command/CommandManager;

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->activityContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    .line 85
    new-instance v0, Lcom/esotericsoftware/kryo/Kryo;

    invoke-direct {v0}, Lcom/esotericsoftware/kryo/Kryo;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    .line 86
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->registerMap:Ljava/util/LinkedHashMap;

    .line 88
    nop

    .line 89
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->setRegisterMapVersion(I)V

    .line 90
    invoke-direct {p0}, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->registerClasses()V

    .line 91
    return-void
.end method

.method private final registerClasses()V
    .locals 12

    .line 145
    iget-object v0, p0, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->registerMap:Ljava/util/LinkedHashMap;

    check-cast v0, Ljava/util/Map;

    .local v0, "$this$forEach$iv":Ljava/util/Map;
    const/4 v1, 0x0

    .line 244
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .local v3, "element$iv":Ljava/util/Map$Entry;
    move-object v4, v3

    .local v4, "$dstr$classRegister$serializer":Ljava/util/Map$Entry;
    const/4 v5, 0x0

    .local v5, "$i$a$-forEach-CommandSerializationUtilities$registerClasses$1":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .local v6, "classRegister":Ljava/lang/Class;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;

    .line 146
    .local v7, "serializer":Lorg/catrobat/paintroid/command/serialization/VersionSerializer;
    iget-object v8, p0, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v8, v6}, Lcom/esotericsoftware/kryo/Kryo;->register(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Registration;

    move-result-object v8

    .line 147
    .local v8, "registration":Lcom/esotericsoftware/kryo/Registration;
    if-eqz v7, :cond_0

    move-object v9, v7

    .local v9, "it":Lorg/catrobat/paintroid/command/serialization/VersionSerializer;
    const/4 v10, 0x0

    .line 148
    .local v10, "$i$a$-let-CommandSerializationUtilities$registerClasses$1$1":I
    const-string v11, "registration"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v7

    check-cast v11, Lcom/esotericsoftware/kryo/Serializer;

    invoke-virtual {v8, v11}, Lcom/esotericsoftware/kryo/Registration;->setSerializer(Lcom/esotericsoftware/kryo/Serializer;)V

    .line 149
    nop

    .line 147
    .end local v9    # "it":Lorg/catrobat/paintroid/command/serialization/VersionSerializer;
    .end local v10    # "$i$a$-let-CommandSerializationUtilities$registerClasses$1$1":I
    nop

    .line 150
    .end local v8    # "registration":Lcom/esotericsoftware/kryo/Registration;
    :cond_0
    nop

    .end local v3    # "element$iv":Ljava/util/Map$Entry;
    .end local v4    # "$dstr$classRegister$serializer":Ljava/util/Map$Entry;
    .end local v5    # "$i$a$-forEach-CommandSerializationUtilities$registerClasses$1":I
    .end local v6    # "classRegister":Ljava/lang/Class;
    .end local v7    # "serializer":Lorg/catrobat/paintroid/command/serialization/VersionSerializer;
    goto :goto_0

    .line 245
    :cond_1
    nop

    .line 151
    .end local v0    # "$this$forEach$iv":Ljava/util/Map;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method private final setRegisterMapVersion(I)V
    .locals 6
    .param p1, "version"    # I

    .line 96
    iget-object v0, p0, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->registerMap:Ljava/util/LinkedHashMap;

    .local v0, "$this$with":Ljava/util/LinkedHashMap;
    const/4 v1, 0x0

    .line 97
    .local v1, "$i$a$-with-CommandSerializationUtilities$setRegisterMapVersion$1":I
    const-class v2, Lorg/catrobat/paintroid/command/Command;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-class v2, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/CompositeCommandSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/CompositeCommandSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-class v2, [F

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/DataStructuresSerializer$FloatArraySerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/DataStructuresSerializer$FloatArraySerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-class v2, Landroid/graphics/PointF;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/DataStructuresSerializer$PointFSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/DataStructuresSerializer$PointFSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-class v2, Landroid/graphics/Point;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/DataStructuresSerializer$PointSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/DataStructuresSerializer$PointSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-class v2, Lorg/catrobat/paintroid/model/CommandManagerModel;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/CommandManagerModelSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/CommandManagerModelSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-class v2, Lorg/catrobat/paintroid/command/implementation/SetDimensionCommand;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/SetDimensionCommandSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/SetDimensionCommandSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-class v2, Lorg/catrobat/paintroid/command/implementation/SprayCommand;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/SprayCommandSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/SprayCommandSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-class v2, Landroid/graphics/Paint;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/PaintSerializer;

    iget-object v5, p0, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->activityContext:Landroid/content/Context;

    invoke-direct {v4, p1, v5}, Lorg/catrobat/paintroid/command/serialization/PaintSerializer;-><init>(ILandroid/content/Context;)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-class v2, Lorg/catrobat/paintroid/command/implementation/AddLayerCommand;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/AddLayerCommandSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/AddLayerCommandSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-class v2, Lorg/catrobat/paintroid/command/implementation/SelectLayerCommand;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/SelectLayerCommandSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/SelectLayerCommandSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-class v2, Lorg/catrobat/paintroid/command/implementation/LoadCommand;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/LoadCommandSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/LoadCommandSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-class v2, Lorg/catrobat/paintroid/command/implementation/TextToolCommand;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/TextToolCommandSerializer;

    iget-object v5, p0, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->activityContext:Landroid/content/Context;

    invoke-direct {v4, p1, v5}, Lorg/catrobat/paintroid/command/serialization/TextToolCommandSerializer;-><init>(ILandroid/content/Context;)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-class v2, [Ljava/lang/String;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/DataStructuresSerializer$StringArraySerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/DataStructuresSerializer$StringArraySerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-class v2, Lorg/catrobat/paintroid/command/implementation/FillCommand;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/FillCommandSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/FillCommandSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-class v2, Lorg/catrobat/paintroid/command/implementation/FlipCommand;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/FlipCommandSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/FlipCommandSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-class v2, Lorg/catrobat/paintroid/command/implementation/CropCommand;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/CropCommandSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/CropCommandSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-class v2, Lorg/catrobat/paintroid/command/implementation/CutCommand;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/CutCommandSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/CutCommandSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-class v2, Lorg/catrobat/paintroid/command/implementation/ResizeCommand;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/ResizeCommandSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/ResizeCommandSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-class v2, Lorg/catrobat/paintroid/command/implementation/RotateCommand;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/RotateCommandSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/RotateCommandSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-class v2, Lorg/catrobat/paintroid/command/implementation/ResetCommand;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/ResetCommandSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/ResetCommandSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-class v2, Lorg/catrobat/paintroid/command/implementation/ReorderLayersCommand;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/ReorderLayersCommandSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/ReorderLayersCommandSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-class v2, Lorg/catrobat/paintroid/command/implementation/RemoveLayerCommand;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/RemoveLayerCommandSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/RemoveLayerCommandSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-class v2, Lorg/catrobat/paintroid/command/implementation/MergeLayersCommand;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/MergeLayersCommandSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/MergeLayersCommandSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-class v2, Lorg/catrobat/paintroid/command/implementation/PathCommand;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/PathCommandSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/PathCommandSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-class v2, Lorg/catrobat/paintroid/command/serialization/SerializablePath;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/SerializablePath$PathSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/SerializablePath$PathSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-class v2, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Move;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/SerializablePath$PathActionMoveSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/SerializablePath$PathActionMoveSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-class v2, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Line;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/SerializablePath$PathActionLineSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/SerializablePath$PathActionLineSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-class v2, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Quad;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/SerializablePath$PathActionQuadSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/SerializablePath$PathActionQuadSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-class v2, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Rewind;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/SerializablePath$PathActionRewindSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/SerializablePath$PathActionRewindSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-class v2, Lorg/catrobat/paintroid/command/implementation/LoadBitmapListCommand;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/LoadBitmapListCommandSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/LoadBitmapListCommandSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-class v2, Lorg/catrobat/paintroid/command/implementation/GeometricFillCommand;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/GeometricFillCommandSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/GeometricFillCommandSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-class v2, Lorg/catrobat/paintroid/tools/drawable/HeartDrawable;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/GeometricFillCommandSerializer$HeartDrawableSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/GeometricFillCommandSerializer$HeartDrawableSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-class v2, Lorg/catrobat/paintroid/tools/drawable/OvalDrawable;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/GeometricFillCommandSerializer$OvalDrawableSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/GeometricFillCommandSerializer$OvalDrawableSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-class v2, Lorg/catrobat/paintroid/tools/drawable/RectangleDrawable;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/GeometricFillCommandSerializer$RectangleDrawableSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/GeometricFillCommandSerializer$RectangleDrawableSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-class v2, Lorg/catrobat/paintroid/tools/drawable/StarDrawable;

    new-instance v4, Lorg/catrobat/paintroid/command/serialization/GeometricFillCommandSerializer$StarDrawableSerializer;

    invoke-direct {v4, p1}, Lorg/catrobat/paintroid/command/serialization/GeometricFillCommandSerializer$StarDrawableSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-class v2, Lorg/catrobat/paintroid/tools/drawable/ShapeDrawable;

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-class v2, Landroid/graphics/RectF;

    new-instance v3, Lorg/catrobat/paintroid/command/serialization/DataStructuresSerializer$RectFSerializer;

    invoke-direct {v3, p1}, Lorg/catrobat/paintroid/command/serialization/DataStructuresSerializer$RectFSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-class v2, Lorg/catrobat/paintroid/command/implementation/StampCommand;

    new-instance v3, Lorg/catrobat/paintroid/command/serialization/StampCommandSerializer;

    invoke-direct {v3, p1}, Lorg/catrobat/paintroid/command/serialization/StampCommandSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-class v2, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;

    new-instance v3, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface$TypefaceSerializer;

    invoke-direct {v3, p1}, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface$TypefaceSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-class v2, Lorg/catrobat/paintroid/command/implementation/PointCommand;

    new-instance v3, Lorg/catrobat/paintroid/command/serialization/PointCommandSerializer;

    invoke-direct {v3, p1}, Lorg/catrobat/paintroid/command/serialization/PointCommandSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-class v2, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;

    new-instance v3, Lorg/catrobat/paintroid/command/serialization/SerializablePath$PathActionCubeSerializer;

    invoke-direct {v3, p1}, Lorg/catrobat/paintroid/command/serialization/SerializablePath$PathActionCubeSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-class v2, Landroid/graphics/Bitmap;

    new-instance v3, Lorg/catrobat/paintroid/command/serialization/BitmapSerializer;

    invoke-direct {v3, p1}, Lorg/catrobat/paintroid/command/serialization/BitmapSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-class v2, Lorg/catrobat/paintroid/command/implementation/SmudgePathCommand;

    new-instance v3, Lorg/catrobat/paintroid/command/serialization/SmudgePathCommandSerializer;

    invoke-direct {v3, p1}, Lorg/catrobat/paintroid/command/serialization/SmudgePathCommandSerializer;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/paintroid/command/serialization/VersionSerializer;

    .line 96
    .end local v0    # "$this$with":Ljava/util/LinkedHashMap;
    .end local v1    # "$i$a$-with-CommandSerializationUtilities$setRegisterMapVersion$1":I
    nop

    .line 142
    return-void
.end method

.method private final writeToStream(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/OutputStream;

    .line 213
    new-instance v0, Lcom/esotericsoftware/kryo/io/Output;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/io/Output;-><init>(Ljava/io/OutputStream;)V

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Lcom/esotericsoftware/kryo/io/Output;

    .local v2, "output":Lcom/esotericsoftware/kryo/io/Output;
    const/4 v3, 0x0

    .line 214
    .local v3, "$i$a$-use-CommandSerializationUtilities$writeToStream$1":I
    const-string v4, "CATROBAT"

    invoke-virtual {v2, v4}, Lcom/esotericsoftware/kryo/io/Output;->writeString(Ljava/lang/String;)V

    .line 215
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    .line 216
    iget-object v4, p0, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    iget-object v5, p0, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->commandManager:Lorg/catrobat/paintroid/command/CommandManager;

    invoke-interface {v5}, Lorg/catrobat/paintroid/command/CommandManager;->getCommandManagerModel()Lorg/catrobat/paintroid/model/CommandManagerModel;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    .line 217
    nop

    .end local v2    # "output":Lcom/esotericsoftware/kryo/io/Output;
    .end local v3    # "$i$a$-use-CommandSerializationUtilities$writeToStream$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 218
    return-void

    .line 213
    :catchall_0
    move-exception v1

    .end local p1    # "stream":Ljava/io/OutputStream;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local p1    # "stream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public final getKryo()Lcom/esotericsoftware/kryo/Kryo;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    return-object v0
.end method

.method public final readFromFile(Landroid/net/Uri;)Lorg/catrobat/paintroid/model/CommandManagerModel;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    .line 223
    .local v0, "commandModel":Ljava/lang/Object;
    iget-object v1, p0, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->activityContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    :try_start_0
    move-object v4, v1

    check-cast v4, Ljava/io/InputStream;

    .local v4, "contentResolverStream":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 224
    .local v5, "$i$a$-use-CommandSerializationUtilities$readFromFile$1":I
    new-instance v6, Lcom/esotericsoftware/kryo/io/Input;

    invoke-direct {v6, v4}, Lcom/esotericsoftware/kryo/io/Input;-><init>(Ljava/io/InputStream;)V

    check-cast v6, Ljava/io/Closeable;

    check-cast v2, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v7, v6

    check-cast v7, Lcom/esotericsoftware/kryo/io/Input;

    .local v7, "input":Lcom/esotericsoftware/kryo/io/Input;
    const/4 v8, 0x0

    .line 225
    .local v8, "$i$a$-use-CommandSerializationUtilities$readFromFile$1$1":I
    invoke-virtual {v7}, Lcom/esotericsoftware/kryo/io/Input;->readString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "CATROBAT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 228
    invoke-virtual {v7}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v9

    .line 229
    .local v9, "imageVersion":I
    const/4 v10, 0x1

    if-eq v10, v9, :cond_0

    .line 230
    invoke-direct {p0, v9}, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->setRegisterMapVersion(I)V

    .line 231
    invoke-direct {p0}, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->registerClasses()V

    .line 233
    :cond_0
    iget-object v10, p0, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    const-class v11, Lorg/catrobat/paintroid/model/CommandManagerModel;

    invoke-virtual {v10, v7, v11}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "kryo.readObject(input, C\u2026ManagerModel::class.java)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Lorg/catrobat/paintroid/model/CommandManagerModel;

    move-object v0, v10

    .line 234
    .end local v9    # "imageVersion":I
    nop

    .end local v7    # "input":Lcom/esotericsoftware/kryo/io/Input;
    .end local v8    # "$i$a$-use-CommandSerializationUtilities$readFromFile$1$1":I
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    :try_start_2
    invoke-static {v6, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 235
    nop

    .end local v4    # "contentResolverStream":Ljava/io/InputStream;
    .end local v5    # "$i$a$-use-CommandSerializationUtilities$readFromFile$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 223
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 237
    invoke-virtual {v0}, Lorg/catrobat/paintroid/model/CommandManagerModel;->getCommands()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->reverse(Ljava/util/List;)V

    .line 238
    return-object v0

    .line 226
    .restart local v4    # "contentResolverStream":Ljava/io/InputStream;
    .restart local v5    # "$i$a$-use-CommandSerializationUtilities$readFromFile$1":I
    .restart local v7    # "input":Lcom/esotericsoftware/kryo/io/Input;
    .restart local v8    # "$i$a$-use-CommandSerializationUtilities$readFromFile$1$1":I
    :cond_1
    :try_start_3
    new-instance v2, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities$NotCatrobatImageException;

    const-string v3, "Magic Value doesn\'t exist."

    invoke-direct {v2, v3}, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities$NotCatrobatImageException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    .end local v0    # "commandModel":Ljava/lang/Object;
    .end local v4    # "contentResolverStream":Ljava/io/InputStream;
    .end local v5    # "$i$a$-use-CommandSerializationUtilities$readFromFile$1":I
    .end local p1    # "uri":Landroid/net/Uri;
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 224
    .end local v7    # "input":Lcom/esotericsoftware/kryo/io/Input;
    .end local v8    # "$i$a$-use-CommandSerializationUtilities$readFromFile$1$1":I
    .restart local v0    # "commandModel":Ljava/lang/Object;
    .restart local v4    # "contentResolverStream":Ljava/io/InputStream;
    .restart local v5    # "$i$a$-use-CommandSerializationUtilities$readFromFile$1":I
    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v2

    .end local v0    # "commandModel":Ljava/lang/Object;
    .end local v4    # "contentResolverStream":Ljava/io/InputStream;
    .end local v5    # "$i$a$-use-CommandSerializationUtilities$readFromFile$1":I
    .end local p1    # "uri":Landroid/net/Uri;
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .restart local v0    # "commandModel":Ljava/lang/Object;
    .restart local v4    # "contentResolverStream":Ljava/io/InputStream;
    .restart local v5    # "$i$a$-use-CommandSerializationUtilities$readFromFile$1":I
    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_1
    move-exception v3

    :try_start_5
    invoke-static {v6, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v0    # "commandModel":Ljava/lang/Object;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 223
    .end local v4    # "contentResolverStream":Ljava/io/InputStream;
    .end local v5    # "$i$a$-use-CommandSerializationUtilities$readFromFile$1":I
    .restart local v0    # "commandModel":Ljava/lang/Object;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_2
    move-exception v2

    .end local v0    # "commandModel":Ljava/lang/Object;
    .end local p1    # "uri":Landroid/net/Uri;
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .restart local v0    # "commandModel":Ljava/lang/Object;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_3
    move-exception v3

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final readFromInternalMemory(Ljava/io/FileInputStream;)Lorg/catrobat/paintroid/model/CommandManagerModel;
    .locals 8
    .param p1, "stream"    # Ljava/io/FileInputStream;

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/catrobat/paintroid/model/CommandManagerModel;

    .line 191
    .local v1, "commandModel":Ljava/lang/Object;
    nop

    .line 192
    :try_start_0
    new-instance v2, Lcom/esotericsoftware/kryo/io/Input;

    move-object v3, p1

    check-cast v3, Ljava/io/InputStream;

    invoke-direct {v2, v3}, Lcom/esotericsoftware/kryo/io/Input;-><init>(Ljava/io/InputStream;)V

    check-cast v2, Ljava/io/Closeable;

    check-cast v0, Ljava/lang/Throwable;
    :try_end_0
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v3, v2

    check-cast v3, Lcom/esotericsoftware/kryo/io/Input;

    .local v3, "input":Lcom/esotericsoftware/kryo/io/Input;
    const/4 v4, 0x0

    .line 193
    .local v4, "$i$a$-use-CommandSerializationUtilities$readFromInternalMemory$1":I
    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/io/Input;->readString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CATROBAT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 196
    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v5

    .line 197
    .local v5, "imageVersion":I
    const/4 v6, 0x1

    if-eq v6, v5, :cond_0

    .line 198
    invoke-direct {p0, v5}, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->setRegisterMapVersion(I)V

    .line 199
    invoke-direct {p0}, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->registerClasses()V

    .line 201
    :cond_0
    iget-object v6, p0, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    const-class v7, Lorg/catrobat/paintroid/model/CommandManagerModel;

    invoke-virtual {v6, v3, v7}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/paintroid/model/CommandManagerModel;

    move-object v1, v6

    .line 202
    .end local v5    # "imageVersion":I
    nop

    .end local v3    # "input":Lcom/esotericsoftware/kryo/io/Input;
    .end local v4    # "$i$a$-use-CommandSerializationUtilities$readFromInternalMemory$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :try_start_2
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 194
    .restart local v3    # "input":Lcom/esotericsoftware/kryo/io/Input;
    .restart local v4    # "$i$a$-use-CommandSerializationUtilities$readFromInternalMemory$1":I
    :cond_1
    :try_start_3
    new-instance v0, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities$NotCatrobatImageException;

    const-string v5, "Magic Value doesn\'t exist."

    invoke-direct {v0, v5}, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities$NotCatrobatImageException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    .end local v1    # "commandModel":Ljava/lang/Object;
    .end local p1    # "stream":Ljava/io/FileInputStream;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 192
    .end local v3    # "input":Lcom/esotericsoftware/kryo/io/Input;
    .end local v4    # "$i$a$-use-CommandSerializationUtilities$readFromInternalMemory$1":I
    .restart local v1    # "commandModel":Ljava/lang/Object;
    .restart local p1    # "stream":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v0

    .end local v1    # "commandModel":Ljava/lang/Object;
    .end local p1    # "stream":Ljava/io/FileInputStream;
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .restart local v1    # "commandModel":Ljava/lang/Object;
    .restart local p1    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v3

    :try_start_5
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v1    # "commandModel":Ljava/lang/Object;
    .end local p1    # "stream":Ljava/io/FileInputStream;
    throw v3
    :try_end_5
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_5 .. :try_end_5} :catch_0

    .line 203
    .restart local v1    # "commandModel":Ljava/lang/Object;
    .restart local p1    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 204
    .local v0, "ex":Lcom/esotericsoftware/kryo/KryoException;
    sget-object v2, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KryoException while reading autosave: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/esotericsoftware/kryo/KryoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v0    # "ex":Lcom/esotericsoftware/kryo/KryoException;
    :goto_0
    nop

    .line 207
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/catrobat/paintroid/model/CommandManagerModel;->getCommands()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reverse(Ljava/util/List;)V

    .line 209
    :cond_2
    return-object v1
.end method

.method public final writeToFile(Ljava/lang/String;)Landroid/net/Uri;
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/net/Uri;

    .line 155
    .local v1, "returnUri":Ljava/lang/Object;
    iget-object v2, p0, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->activityContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 157
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_1

    .line 158
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    move-object v4, v3

    .local v4, "$this$apply":Landroid/content/ContentValues;
    const/4 v5, 0x0

    .line 159
    .local v5, "$i$a$-apply-CommandSerializationUtilities$writeToFile$contentValues$1":I
    const-string v6, "_display_name"

    invoke-virtual {v4, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget-object v6, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    const-string v7, "relative_path"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    nop

    .line 158
    .end local v4    # "$this$apply":Landroid/content/ContentValues;
    .end local v5    # "$i$a$-apply-CommandSerializationUtilities$writeToFile$contentValues$1":I
    nop

    .line 162
    .local v3, "contentValues":Landroid/content/ContentValues;
    sget-object v4, Landroid/provider/MediaStore$Downloads;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_0

    .local v4, "uri":Landroid/net/Uri;
    const/4 v5, 0x0

    .line 163
    .local v5, "$i$a$-let-CommandSerializationUtilities$writeToFile$1":I
    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    if-eqz v6, :cond_0

    check-cast v6, Ljava/io/Closeable;

    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    move-object v7, v6

    check-cast v7, Ljava/io/OutputStream;

    .local v7, "stream":Ljava/io/OutputStream;
    const/4 v8, 0x0

    .line 164
    .local v8, "$i$a$-use-CommandSerializationUtilities$writeToFile$1$1":I
    const-string v9, "stream"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->writeToStream(Ljava/io/OutputStream;)V

    .line 165
    move-object v1, v4

    .line 166
    nop

    .end local v7    # "stream":Ljava/io/OutputStream;
    .end local v8    # "$i$a$-use-CommandSerializationUtilities$writeToFile$1$1":I
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-static {v6, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .end local v1    # "returnUri":Ljava/lang/Object;
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v3    # "contentValues":Landroid/content/ContentValues;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "$i$a$-let-CommandSerializationUtilities$writeToFile$1":I
    .end local p1    # "fileName":Ljava/lang/String;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v1    # "returnUri":Ljava/lang/Object;
    .restart local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v3    # "contentValues":Landroid/content/ContentValues;
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local v5    # "$i$a$-let-CommandSerializationUtilities$writeToFile$1":I
    .restart local p1    # "fileName":Ljava/lang/String;
    :catchall_1
    move-exception v7

    invoke-static {v6, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v7

    .line 162
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "$i$a$-let-CommandSerializationUtilities$writeToFile$1":I
    :cond_0
    :goto_0
    goto :goto_1

    .line 169
    .end local v3    # "contentValues":Landroid/content/ContentValues;
    :cond_1
    sget-object v3, Lorg/catrobat/paintroid/common/Constants;->DOWNLOADS_DIRECTORY:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lorg/catrobat/paintroid/common/Constants;->DOWNLOADS_DIRECTORY:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_2

    .line 170
    return-object v0

    .line 172
    :cond_2
    new-instance v3, Ljava/io/File;

    sget-object v4, Lorg/catrobat/paintroid/common/Constants;->DOWNLOADS_DIRECTORY:Ljava/io/File;

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 173
    .local v3, "imageFile":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v4, Ljava/io/Closeable;

    check-cast v0, Ljava/lang/Throwable;

    :try_start_2
    move-object v5, v4

    check-cast v5, Ljava/io/FileOutputStream;

    .local v5, "fileStream":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 174
    .local v6, "$i$a$-use-CommandSerializationUtilities$writeToFile$2":I
    move-object v7, v5

    check-cast v7, Ljava/io/OutputStream;

    invoke-direct {p0, v7}, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->writeToStream(Ljava/io/OutputStream;)V

    .line 175
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    move-object v1, v7

    .line 176
    nop

    .end local v5    # "fileStream":Ljava/io/FileOutputStream;
    .end local v6    # "$i$a$-use-CommandSerializationUtilities$writeToFile$2":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 173
    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 177
    .end local v3    # "imageFile":Ljava/io/File;
    :goto_1
    nop

    .line 179
    return-object v1

    .line 173
    .restart local v3    # "imageFile":Ljava/io/File;
    :catchall_2
    move-exception v0

    .end local v1    # "returnUri":Ljava/lang/Object;
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v3    # "imageFile":Ljava/io/File;
    .end local p1    # "fileName":Ljava/lang/String;
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .restart local v1    # "returnUri":Ljava/lang/Object;
    .restart local v2    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v3    # "imageFile":Ljava/io/File;
    .restart local p1    # "fileName":Ljava/lang/String;
    :catchall_3
    move-exception v5

    invoke-static {v4, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public final writeToInternalMemory(Ljava/io/FileOutputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/FileOutputStream;

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    move-object v0, p1

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Ljava/io/FileOutputStream;

    .local v2, "fileStream":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 184
    .local v3, "$i$a$-use-CommandSerializationUtilities$writeToInternalMemory$1":I
    move-object v4, v2

    check-cast v4, Ljava/io/OutputStream;

    invoke-direct {p0, v4}, Lorg/catrobat/paintroid/command/serialization/CommandSerializationUtilities;->writeToStream(Ljava/io/OutputStream;)V

    .line 185
    nop

    .end local v2    # "fileStream":Ljava/io/FileOutputStream;
    .end local v3    # "$i$a$-use-CommandSerializationUtilities$writeToInternalMemory$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 186
    return-void

    .line 183
    :catchall_0
    move-exception v1

    .end local p1    # "stream":Ljava/io/FileOutputStream;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local p1    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method
