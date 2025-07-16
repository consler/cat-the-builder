.class Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$UnserializableParentsReflectionProvider$1;
.super Ljava/lang/Object;
.source "SerializableConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider$Visitor;


# instance fields
.field private final synthetic this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$UnserializableParentsReflectionProvider;

.field private final synthetic val$visitor:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider$Visitor;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$UnserializableParentsReflectionProvider;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider$Visitor;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$UnserializableParentsReflectionProvider$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$UnserializableParentsReflectionProvider;

    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$UnserializableParentsReflectionProvider$1;->val$visitor:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider$Visitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1

    .line 480
    sget-object v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->class$java$io$Serializable:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.io.Serializable"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->class$java$io$Serializable:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter;->class$java$io$Serializable:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 481
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SerializableConverter$UnserializableParentsReflectionProvider$1;->val$visitor:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider$Visitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider$Visitor;->visit(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
