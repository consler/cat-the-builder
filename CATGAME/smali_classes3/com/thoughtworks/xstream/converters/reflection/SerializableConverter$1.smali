.class Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;
.super Ljava/lang/Object;
.source "SerializableConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/core/util/CustomObjectOutputStream$StreamCallback;


# instance fields
.field private final synthetic this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

.field private final synthetic val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

.field private final synthetic val$currentType:[Ljava/lang/Class;

.field private final synthetic val$source:Ljava/lang/Object;

.field private final synthetic val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

.field private final synthetic val$writtenClassWrapper:[Z


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;[Ljava/lang/Class;Ljava/lang/Object;[Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    .line 131
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    iput-object p4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$currentType:[Ljava/lang/Class;

    iput-object p5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$source:Ljava/lang/Object;

    iput-object p6, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writtenClassWrapper:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 230
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Objects are not allowed to call ObjectOutputStream.close() from writeObject()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public defaultWriteObject()V
    .locals 12

    .line 176
    const/4 v0, 0x0

    .line 178
    .local v0, "writtenDefaultFields":Z
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$currentType:[Ljava/lang/Class;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v1

    .line 180
    .local v1, "objectStreamClass":Ljava/io/ObjectStreamClass;
    if-nez v1, :cond_0

    .line 181
    return-void

    .line 184
    :cond_0
    invoke-virtual {v1}, Ljava/io/ObjectStreamClass;->getFields()[Ljava/io/ObjectStreamField;

    move-result-object v3

    .line 185
    .local v3, "fields":[Ljava/io/ObjectStreamField;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    const-string v6, "default"

    if-ge v4, v5, :cond_6

    .line 186
    aget-object v5, v3, v4

    .line 187
    .local v5, "field":Ljava/io/ObjectStreamField;
    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$currentType:[Ljava/lang/Class;

    aget-object v8, v8, v2

    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$source:Ljava/lang/Object;

    invoke-static {v7, v5, v8, v9}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->access$000(Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;Ljava/io/ObjectStreamField;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 188
    .local v7, "value":Ljava/lang/Object;
    if-eqz v7, :cond_5

    .line 189
    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writtenClassWrapper:[Z

    aget-boolean v8, v8, v2

    if-nez v8, :cond_1

    .line 190
    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v9, v9, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v10, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$currentType:[Ljava/lang/Class;

    aget-object v10, v10, v2

    invoke-interface {v9, v10}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 191
    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writtenClassWrapper:[Z

    const/4 v9, 0x1

    aput-boolean v9, v8, v2

    .line 193
    :cond_1
    if-nez v0, :cond_2

    .line 194
    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v8, v6}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x1

    .line 197
    :cond_2
    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v6, v6, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$currentType:[Ljava/lang/Class;

    aget-object v8, v8, v2

    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lcom/thoughtworks/xstream/mapper/Mapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 198
    goto :goto_1

    .line 201
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 202
    .local v6, "actualType":Ljava/lang/Class;
    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v9, v9, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v10, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$source:Ljava/lang/Object;

    .line 203
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 202
    invoke-static {v8, v9, v6}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 204
    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v8, v8, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-virtual {v5}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    .line 205
    .local v8, "defaultType":Ljava/lang/Class;
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 206
    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v9, v9, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v10, "class"

    invoke-interface {v9, v10}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 207
    .local v9, "attributeName":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 208
    iget-object v10, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iget-object v11, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v11, v11, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v11, v6}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v9, v11}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .end local v9    # "attributeName":Ljava/lang/String;
    :cond_4
    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    invoke-interface {v9, v7}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    .line 214
    iget-object v9, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v9}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 185
    .end local v5    # "field":Ljava/io/ObjectStreamField;
    .end local v6    # "actualType":Ljava/lang/Class;
    .end local v7    # "value":Ljava/lang/Object;
    .end local v8    # "defaultType":Ljava/lang/Class;
    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 217
    .end local v4    # "i":I
    :cond_6
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writtenClassWrapper:[Z

    aget-boolean v2, v4, v2

    if-eqz v2, :cond_7

    if-nez v0, :cond_7

    .line 218
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v2, v6}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 219
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    goto :goto_2

    .line 220
    :cond_7
    if-eqz v0, :cond_8

    .line 221
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 223
    :cond_8
    :goto_2
    return-void
.end method

.method public flush()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->flush()V

    .line 227
    return-void
.end method

.method public writeFieldsToStream(Ljava/util/Map;)V
    .locals 10
    .param p1, "fields"    # Ljava/util/Map;

    .line 145
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$currentType:[Ljava/lang/Class;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    .line 147
    .local v0, "objectStreamClass":Ljava/io/ObjectStreamClass;
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    const-string v3, "default"

    invoke-interface {v2, v3}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 148
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 149
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 150
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v4, v4, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$currentType:[Ljava/lang/Class;

    aget-object v5, v5, v1

    invoke-interface {v4, v5, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 151
    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {v0, v3}, Ljava/io/ObjectStreamClass;->getField(Ljava/lang/String;)Ljava/io/ObjectStreamField;

    move-result-object v4

    .line 154
    .local v4, "field":Ljava/io/ObjectStreamField;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 155
    .local v5, "value":Ljava/lang/Object;
    if-eqz v4, :cond_3

    .line 158
    if-eqz v5, :cond_2

    .line 159
    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v7, v7, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$source:Ljava/lang/Object;

    .line 160
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v7, v8, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 161
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 159
    invoke-static {v6, v7, v8}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 162
    invoke-virtual {v4}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-eq v6, v7, :cond_1

    invoke-virtual {v4}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_1

    .line 163
    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v6, v6, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v7, "class"

    invoke-interface {v6, v7}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 164
    .local v6, "attributeName":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 165
    iget-object v7, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iget-object v8, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v8, v8, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .end local v6    # "attributeName":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    invoke-interface {v6, v5}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    .line 169
    iget-object v6, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v6}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 171
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "field":Ljava/io/ObjectStreamField;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_2
    goto :goto_0

    .line 156
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "field":Ljava/io/ObjectStreamField;
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_3
    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6, v3}, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 172
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "field":Ljava/io/ObjectStreamField;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_4
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 173
    return-void
.end method

.method public writeToStream(Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 134
    if-nez p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    const-string v1, "null"

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;

    iget-object v1, v1, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 139
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 142
    :goto_0
    return-void
.end method
