.class Lcom/thoughtworks/xstream/converters/reflection/PureJavaReflectionProvider$1;
.super Ljava/io/ObjectInputStream;
.source "PureJavaReflectionProvider.java"


# instance fields
.field private final synthetic this$0:Lcom/thoughtworks/xstream/converters/reflection/PureJavaReflectionProvider;

.field private final synthetic val$type:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/PureJavaReflectionProvider;Ljava/io/InputStream;Ljava/lang/Class;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/PureJavaReflectionProvider$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/PureJavaReflectionProvider;

    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/reflection/PureJavaReflectionProvider$1;->val$type:Ljava/lang/Class;

    invoke-direct {p0, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 120
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/PureJavaReflectionProvider$1;->val$type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
