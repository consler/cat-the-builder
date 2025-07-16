.class Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;
.super Ljava/lang/Object;
.source "AbstractReferenceMarshaller.java"

# interfaces
.implements Lcom/thoughtworks/xstream/core/ReferencingMarshallingContext;


# instance fields
.field private final synthetic this$0:Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;

.field private final synthetic val$currentPath:Lcom/thoughtworks/xstream/io/path/Path;

.field private final synthetic val$newReferenceKey:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;Ljava/lang/Object;Lcom/thoughtworks/xstream/io/path/Path;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->this$0:Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;

    iput-object p2, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->val$newReferenceKey:Ljava/lang/Object;

    iput-object p3, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->val$currentPath:Lcom/thoughtworks/xstream/io/path/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertAnother(Ljava/lang/Object;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->this$0:Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->convertAnother(Ljava/lang/Object;)V

    return-void
.end method

.method public convertAnother(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/Converter;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->this$0:Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;

    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->convertAnother(Ljava/lang/Object;Lcom/thoughtworks/xstream/converters/Converter;)V

    return-void
.end method

.method public currentPath()Lcom/thoughtworks/xstream/io/path/Path;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->this$0:Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->access$100(Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;)Lcom/thoughtworks/xstream/io/path/PathTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/path/PathTracker;->getPath()Lcom/thoughtworks/xstream/io/path/Path;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->this$0:Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public keys()Ljava/util/Iterator;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->this$0:Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->keys()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lookupReference(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->this$0:Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->access$000(Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;)Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->lookupId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$Id;

    .line 97
    invoke-virtual {p1}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$Id;->getItem()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->this$0:Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;

    invoke-virtual {v0, p1, p2}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public registerImplicit(Ljava/lang/Object;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->this$0:Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->access$200(Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;)Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->containsId(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->this$0:Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->access$200(Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;)Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

    move-result-object v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->val$newReferenceKey:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->associateId(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 109
    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$ReferencedImplicitElementException;

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->val$currentPath:Lcom/thoughtworks/xstream/io/path/Path;

    invoke-direct {v0, p1, v1}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$ReferencedImplicitElementException;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/path/Path;)V

    throw v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 92
    iget-object p1, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->this$0:Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;

    invoke-static {p1}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;->access$000(Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller;)Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;

    move-result-object p1

    new-instance v0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$Id;

    iget-object v1, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->val$newReferenceKey:Ljava/lang/Object;

    iget-object v2, p0, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$1;->val$currentPath:Lcom/thoughtworks/xstream/io/path/Path;

    invoke-direct {v0, v1, v2}, Lcom/thoughtworks/xstream/core/AbstractReferenceMarshaller$Id;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/path/Path;)V

    invoke-virtual {p1, p2, v0}, Lcom/thoughtworks/xstream/core/util/ObjectIdDictionary;->associateId(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
