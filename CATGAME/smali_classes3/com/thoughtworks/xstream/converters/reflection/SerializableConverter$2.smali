.class Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;
.super Ljava/lang/Object;
.source "SerializableConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/core/util/CustomObjectInputStream$StreamCallback;


# instance fields
.field private final synthetic this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

.field private final synthetic val$context:Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

.field private final synthetic val$currentType:[Ljava/lang/Class;

.field private final synthetic val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

.field private final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$context:Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    iput-object p4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$result:Ljava/lang/Object;

    iput-object p5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$currentType:[Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 424
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Objects are not allowed to call ObjectInputStream.close() from readObject()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public defaultReadObject()V
    .locals 6

    .line 378
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->serializationMembers:Lcom/thoughtworks/xstream/core/util/SerializationMembers;

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$currentType:[Ljava/lang/Class;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/SerializationMembers;->getSerializablePersistentFields(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->readFieldsFromStream()Ljava/util/Map;

    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 386
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 389
    :goto_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 390
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 392
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$currentType:[Ljava/lang/Class;

    aget-object v1, v1, v2

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v3}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v1, v1, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$currentType:[Ljava/lang/Class;

    aget-object v3, v3, v2

    invoke-interface {v1, v3, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 394
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v3, v3, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-static {v1, v3}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassAttribute(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 397
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v3, v3, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v3, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_1

    .line 399
    :cond_2
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v1, v1, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v3, v3, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$result:Ljava/lang/Object;

    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$currentType:[Ljava/lang/Class;

    aget-object v5, v5, v2

    invoke-interface {v3, v4, v0, v5}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getFieldType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 402
    :goto_1
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$context:Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$result:Ljava/lang/Object;

    invoke-interface {v3, v4, v1}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 403
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v3, v3, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$result:Ljava/lang/Object;

    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$currentType:[Ljava/lang/Class;

    aget-object v5, v5, v2

    invoke-interface {v3, v4, v0, v1, v5}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 406
    :cond_3
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    goto :goto_0

    .line 408
    :cond_4
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    return-void

    .line 387
    :cond_5
    new-instance v0, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v1, "Expected <default/> element in readObject() stream"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readFieldsFromStream()Ljava/util/Map;
    .locals 7

    .line 331
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 332
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 333
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fields"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    :goto_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 336
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 337
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "field"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    const-string v2, "name"

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v2, v2, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    const-string v4, "class"

    invoke-interface {v3, v4}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 342
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$context:Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$result:Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 343
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    goto :goto_0

    .line 338
    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v1, "Expected <field/> element inside <field/>"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_1
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 348
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$currentType:[Ljava/lang/Class;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 349
    :goto_1
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v3}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 350
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v3}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 351
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v3, v3, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$currentType:[Ljava/lang/Class;

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v5}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/thoughtworks/xstream/mapper/Mapper;->realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 352
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v4, v4, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$currentType:[Ljava/lang/Class;

    aget-object v5, v5, v2

    invoke-interface {v4, v5, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 353
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v5, v5, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-static {v4, v5}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassAttribute(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 356
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v5, v5, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v5, v4}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    goto :goto_2

    .line 358
    :cond_2
    invoke-virtual {v1, v3}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;)Ljava/io/ObjectStreamField;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 362
    invoke-virtual {v4}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 364
    :goto_2
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$context:Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$result:Ljava/lang/Object;

    invoke-interface {v5, v6, v4}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 365
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 360
    :cond_3
    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$currentType:[Ljava/lang/Class;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v3}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    goto :goto_1

    .line 373
    :cond_5
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    return-object v0

    .line 370
    :cond_6
    new-instance v0, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v1, "Expected <fields/> or <default/> element when calling ObjectInputStream.readFields()"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readFromStream()Ljava/lang/Object;
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 324
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v1, v1, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-static {v0, v1}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassType(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/Class;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$context:Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$result:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    return-object v0
.end method

.method public registerValidation(Ljava/io/ObjectInputValidation;I)V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$context:Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2$1;

    invoke-direct {v1, p0, p1}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2$1;-><init>(Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;Ljava/io/ObjectInputValidation;)V

    invoke-interface {v0, v1, p2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->addCompletionCallback(Ljava/lang/Runnable;I)V

    return-void
.end method
