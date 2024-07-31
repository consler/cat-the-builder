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
    .param p1, "this$0"    # Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

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
    .locals 8

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

    .line 380
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v0

    if-nez v0, :cond_1

    .line 383
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
    .local v0, "fieldName":Ljava/lang/String;
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

    .line 396
    .local v1, "classAttribute":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 397
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v3, v3, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v3, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .local v3, "type":Ljava/lang/Class;
    goto :goto_1

    .line 399
    .end local v3    # "type":Ljava/lang/Class;
    :cond_2
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v3, v3, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v4, v4, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$result:Ljava/lang/Object;

    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$currentType:[Ljava/lang/Class;

    aget-object v6, v6, v2

    invoke-interface {v4, v5, v0, v6}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getFieldType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 402
    .restart local v3    # "type":Ljava/lang/Class;
    :goto_1
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$context:Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$result:Ljava/lang/Object;

    invoke-interface {v4, v5, v3}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 403
    .local v4, "value":Ljava/lang/Object;
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v5, v5, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$result:Ljava/lang/Object;

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$currentType:[Ljava/lang/Class;

    aget-object v7, v7, v2

    invoke-interface {v5, v6, v0, v4, v7}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 406
    .end local v1    # "classAttribute":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/Class;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_3
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 407
    .end local v0    # "fieldName":Ljava/lang/String;
    goto :goto_0

    .line 408
    :cond_4
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 409
    return-void

    .line 387
    :cond_5
    new-instance v0, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v1, "Expected <default/> element in readObject() stream"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readFieldsFromStream()Ljava/util/Map;
    .locals 8

    .line 331
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 332
    .local v0, "fields":Ljava/util/Map;
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

    if-eqz v1, :cond_6

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
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v2, v2, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    const-string v4, "class"

    invoke-interface {v3, v4}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 342
    .local v2, "type":Ljava/lang/Class;
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$context:Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$result:Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 343
    .local v3, "value":Ljava/lang/Object;
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v4}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 345
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/Class;
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 338
    :cond_0
    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v2, "Expected <field/> element inside <field/>"

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 346
    :cond_1
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 348
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$currentType:[Ljava/lang/Class;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 349
    .local v1, "objectStreamClass":Ljava/io/ObjectStreamClass;
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
    .local v3, "name":Ljava/lang/String;
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

    .line 355
    .local v4, "classAttribute":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 356
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v5, v5, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v5, v4}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .local v5, "type":Ljava/lang/Class;
    goto :goto_2

    .line 358
    .end local v5    # "type":Ljava/lang/Class;
    :cond_2
    invoke-virtual {v1, v3}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;)Ljava/io/ObjectStreamField;

    move-result-object v5

    .line 359
    .local v5, "field":Ljava/io/ObjectStreamField;
    if-eqz v5, :cond_3

    .line 362
    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v6

    move-object v5, v6

    .line 364
    .local v5, "type":Ljava/lang/Class;
    :goto_2
    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$context:Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$result:Ljava/lang/Object;

    invoke-interface {v6, v7, v5}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .line 365
    .local v6, "value":Ljava/lang/Object;
    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 360
    .end local v6    # "value":Ljava/lang/Object;
    .local v5, "field":Ljava/io/ObjectStreamField;
    :cond_3
    new-instance v6, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$currentType:[Ljava/lang/Class;

    aget-object v2, v7, v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2, v3}, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 367
    .end local v4    # "classAttribute":Ljava/lang/String;
    .end local v5    # "field":Ljava/io/ObjectStreamField;
    :cond_4
    :goto_3
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v4}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 368
    .end local v3    # "name":Ljava/lang/String;
    goto :goto_1

    .line 369
    .end local v1    # "objectStreamClass":Ljava/io/ObjectStreamClass;
    :cond_5
    nop

    .line 373
    :cond_6
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 374
    return-object v0

    .line 370
    :cond_7
    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v2, "Expected <fields/> or <default/> element when calling ObjectInputStream.readFields()"

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v1
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
    .local v0, "type":Ljava/lang/Class;
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$context:Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$result:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 326
    .local v1, "value":Ljava/lang/Object;
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$reader:Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    invoke-interface {v2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 327
    return-object v1
.end method

.method public registerValidation(Ljava/io/ObjectInputValidation;I)V
    .locals 2
    .param p1, "validation"    # Ljava/io/ObjectInputValidation;
    .param p2, "priority"    # I

    .line 412
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;->val$context:Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2$1;

    invoke-direct {v1, p0, p1}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2$1;-><init>(Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$2;Ljava/io/ObjectInputValidation;)V

    invoke-interface {v0, v1, p2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->addCompletionCallback(Ljava/lang/Runnable;I)V

    .line 421
    return-void
.end method
