.class Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;
.super Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;
.source "AbstractReflectionConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldInfo"
.end annotation


# instance fields
.field final type:Ljava/lang/Class;

.field final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0

    .line 655
    invoke-direct {p0, p1, p3}, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldLocation;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 656
    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->type:Ljava/lang/Class;

    .line 657
    iput-object p4, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$FieldInfo;->value:Ljava/lang/Object;

    return-void
.end method
