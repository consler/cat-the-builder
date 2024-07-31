.class public Lcom/thoughtworks/xstream/converters/extended/SubjectConverter;
.super Lcom/thoughtworks/xstream/converters/collections/AbstractCollectionConverter;
.source "SubjectConverter.java"


# static fields
.field static synthetic class$javax$security$auth$Subject:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 0
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 38
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/collections/AbstractCollectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 39
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 42
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 42
    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/SubjectConverter;->class$javax$security$auth$Subject:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "javax.security.auth.Subject"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/extended/SubjectConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/SubjectConverter;->class$javax$security$auth$Subject:Ljava/lang/Class;

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .line 46
    move-object v0, p1

    check-cast v0, Ljavax/security/auth/Subject;

    .line 47
    .local v0, "subject":Ljavax/security/auth/Subject;
    invoke-virtual {v0}, Ljavax/security/auth/Subject;->getPrincipals()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/thoughtworks/xstream/converters/extended/SubjectConverter;->marshalPrincipals(Ljava/util/Set;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    .line 48
    invoke-virtual {v0}, Ljavax/security/auth/Subject;->getPublicCredentials()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/thoughtworks/xstream/converters/extended/SubjectConverter;->marshalPublicCredentials(Ljava/util/Set;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    .line 49
    invoke-virtual {v0}, Ljavax/security/auth/Subject;->getPrivateCredentials()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/thoughtworks/xstream/converters/extended/SubjectConverter;->marshalPrivateCredentials(Ljava/util/Set;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    .line 50
    invoke-virtual {v0}, Ljavax/security/auth/Subject;->isReadOnly()Z

    move-result v1

    invoke-virtual {p0, v1, p2}, Lcom/thoughtworks/xstream/converters/extended/SubjectConverter;->marshalReadOnly(ZLcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    .line 51
    return-void
.end method

.method protected marshalPrincipals(Ljava/util/Set;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 2
    .param p1, "principals"    # Ljava/util/Set;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .line 54
    const-string v0, "principals"

    invoke-interface {p2, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 55
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 57
    .local v1, "principal":Ljava/lang/Object;
    invoke-virtual {p0, v1, p3, p2}, Lcom/thoughtworks/xstream/converters/extended/SubjectConverter;->writeCompleteItem(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/MarshallingContext;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    .line 58
    .end local v1    # "principal":Ljava/lang/Object;
    goto :goto_0

    .line 59
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_0
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 60
    return-void
.end method

.method protected marshalPrivateCredentials(Ljava/util/Set;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 0
    .param p1, "privCredentials"    # Ljava/util/Set;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .line 66
    return-void
.end method

.method protected marshalPublicCredentials(Ljava/util/Set;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 0
    .param p1, "pubCredentials"    # Ljava/util/Set;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .line 63
    return-void
.end method

.method protected marshalReadOnly(ZLcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 1
    .param p1, "readOnly"    # Z
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    .line 69
    const-string v0, "readOnly"

    invoke-interface {p2, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 70
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->setValue(Ljava/lang/String;)V

    .line 71
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 72
    return-void
.end method

.method protected populateSet(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/util/Set;
    .locals 2
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 103
    .local v0, "set":Ljava/util/Set;
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 104
    :goto_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/converters/extended/SubjectConverter;->readCompleteItem(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 106
    .local v1, "principal":Ljava/lang/Object;
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v1    # "principal":Ljava/lang/Object;
    goto :goto_0

    .line 108
    :cond_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 109
    return-object v0
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 5
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/extended/SubjectConverter;->unmarshalPrincipals(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/util/Set;

    move-result-object v0

    .line 76
    .local v0, "principals":Ljava/util/Set;
    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/extended/SubjectConverter;->unmarshalPublicCredentials(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/util/Set;

    move-result-object v1

    .line 77
    .local v1, "publicCredentials":Ljava/util/Set;
    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/extended/SubjectConverter;->unmarshalPrivateCredentials(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/util/Set;

    move-result-object v2

    .line 78
    .local v2, "privateCredentials":Ljava/util/Set;
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/converters/extended/SubjectConverter;->unmarshalReadOnly(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)Z

    move-result v3

    .line 79
    .local v3, "readOnly":Z
    new-instance v4, Ljavax/security/auth/Subject;

    invoke-direct {v4, v3, v0, v1, v2}, Ljavax/security/auth/Subject;-><init>(ZLjava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-object v4
.end method

.method protected unmarshalPrincipals(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/util/Set;
    .locals 1
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/extended/SubjectConverter;->populateSet(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected unmarshalPrivateCredentials(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/util/Set;
    .locals 1
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .line 91
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method protected unmarshalPublicCredentials(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/util/Set;
    .locals 1
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .line 87
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method protected unmarshalReadOnly(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)Z
    .locals 1
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    .line 95
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 96
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 97
    .local v0, "readOnly":Z
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 98
    return v0
.end method
