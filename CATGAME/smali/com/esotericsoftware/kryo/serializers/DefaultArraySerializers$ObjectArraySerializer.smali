.class public Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;
.super Lcom/esotericsoftware/kryo/Serializer;
.source "DefaultArraySerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectArraySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esotericsoftware/kryo/Serializer<",
        "[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private elementsAreSameType:Z

.field private elementsCanBeNull:Z

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Class;)V
    .locals 0

    .line 308
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/Serializer;-><init>()V

    const/4 p1, 0x1

    .line 301
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;->elementsCanBeNull:Z

    .line 305
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;->setAcceptsNull(Z)V

    .line 309
    iput-object p2, p0, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;->type:Ljava/lang/Class;

    .line 310
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    .line 311
    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    move-result p2

    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 312
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;->setElementsAreSameType(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic copy(Lcom/esotericsoftware/kryo/Kryo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 299
    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;->copy(Lcom/esotericsoftware/kryo/Kryo;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lcom/esotericsoftware/kryo/Kryo;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    .line 362
    array-length v0, p2

    .line 363
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 364
    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 366
    aget-object v3, p2, v2

    invoke-virtual {p1, v3}, Lcom/esotericsoftware/kryo/Kryo;->copy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public bridge synthetic read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 299
    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x1

    .line 339
    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 342
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 343
    invoke-virtual {p1, v1}, Lcom/esotericsoftware/kryo/Kryo;->reference(Ljava/lang/Object;)V

    .line 344
    invoke-virtual {p3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p3

    .line 345
    iget-boolean v2, p0, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;->elementsAreSameType:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-virtual {p1, p3}, Lcom/esotericsoftware/kryo/Kryo;->isFinal(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    if-ge v3, v0, :cond_4

    .line 356
    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p3

    aput-object p3, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 346
    :cond_2
    :goto_1
    invoke-virtual {p1, p3}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v2

    .line 347
    iget-boolean v4, p0, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;->elementsCanBeNull:Z

    if-eqz v4, :cond_3

    :goto_2
    if-ge v3, v0, :cond_4

    .line 349
    invoke-virtual {p1, p2, p3, v2}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-ge v3, v0, :cond_4

    .line 352
    invoke-virtual {p1, p2, p3, v2}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;Lcom/esotericsoftware/kryo/Serializer;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    return-object v1
.end method

.method public setElementsAreSameType(Z)V
    .locals 0

    .line 380
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;->elementsAreSameType:Z

    return-void
.end method

.method public setElementsCanBeNull(Z)V
    .locals 0

    .line 373
    iput-boolean p1, p0, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;->elementsCanBeNull:Z

    return-void
.end method

.method public bridge synthetic write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V
    .locals 0

    .line 299
    check-cast p3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;[Ljava/lang/Object;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;[Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 317
    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeByte(B)V

    return-void

    .line 320
    :cond_0
    array-length v1, p3

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    .line 321
    invoke-virtual {p2, v2, v3}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    .line 322
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 323
    iget-boolean v3, p0, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;->elementsAreSameType:Z

    if-nez v3, :cond_2

    invoke-virtual {p1, v2}, Lcom/esotericsoftware/kryo/Kryo;->isFinal(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    if-ge v0, v1, :cond_4

    .line 334
    aget-object v2, p3, v0

    invoke-virtual {p1, p2, v2}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_2
    :goto_1
    invoke-virtual {p1, v2}, Lcom/esotericsoftware/kryo/Kryo;->getSerializer(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/Serializer;

    move-result-object v2

    .line 325
    iget-boolean v3, p0, Lcom/esotericsoftware/kryo/serializers/DefaultArraySerializers$ObjectArraySerializer;->elementsCanBeNull:Z

    if-eqz v3, :cond_3

    :goto_2
    if-ge v0, v1, :cond_4

    .line 327
    aget-object v3, p3, v0

    invoke-virtual {p1, p2, v3, v2}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-ge v0, v1, :cond_4

    .line 330
    aget-object v3, p3, v0

    invoke-virtual {p1, p2, v3, v2}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Lcom/esotericsoftware/kryo/Serializer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method
