.class Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;
.super Ljava/lang/Object;
.source "JavaBeanConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider$Visitor;


# instance fields
.field private final synthetic this$0:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;

.field private final synthetic val$classAttributeName:Ljava/lang/String;

.field private final synthetic val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

.field private final synthetic val$source:Ljava/lang/Object;

.field private final synthetic val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;

    .line 87
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;

    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$source:Ljava/lang/Object;

    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iput-object p4, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$classAttributeName:Ljava/lang/String;

    iput-object p5, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private writeField(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 6
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "fieldType"    # Ljava/lang/Class;
    .param p3, "newObj"    # Ljava/lang/Object;

    .line 101
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 102
    .local v0, "actualType":Ljava/lang/Class;
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;

    iget-object v1, v1, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v1, p2}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 103
    .local v1, "defaultType":Ljava/lang/Class;
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;

    iget-object v2, v2, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$source:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "serializedMember":Ljava/lang/String;
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-static {v3, v2, v0}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$classAttributeName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 106
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;

    iget-object v5, v5, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v5, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    invoke-interface {v3, p3}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    .line 110
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v3}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 111
    return-void
.end method

.method private writeNullField(Ljava/lang/String;)V
    .locals 6
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$source:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "serializedMember":Ljava/lang/String;
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    sget-object v2, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    const-string v3, "com.thoughtworks.xstream.mapper.Mapper$Null"

    if-nez v2, :cond_0

    invoke-static {v3}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    :goto_0
    invoke-static {v1, v0, v2}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 116
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$classAttributeName:Ljava/lang/String;

    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;

    iget-object v4, v4, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    sget-object v5, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    if-nez v5, :cond_1

    invoke-static {v3}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    :goto_1
    invoke-interface {v4, v3}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 118
    return-void
.end method


# virtual methods
.method public shouldVisit(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "definedIn"    # Ljava/lang/Class;

    .line 89
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p2, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "fieldType"    # Ljava/lang/Class;
    .param p3, "definedIn"    # Ljava/lang/Class;
    .param p4, "newObj"    # Ljava/lang/Object;

    .line 93
    if-eqz p4, :cond_0

    .line 94
    invoke-direct {p0, p1, p2, p4}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->writeField(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->writeNullField(Ljava/lang/String;)V

    .line 98
    :goto_0
    return-void
.end method
