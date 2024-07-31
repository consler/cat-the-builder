.class public final synthetic Lcom/opencsv/bean/-$$Lambda$JQt_2xUU8OlQKldVWJ146Zmfe7o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/reflect/Field;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/-$$Lambda$JQt_2xUU8OlQKldVWJ146Zmfe7o;->f$0:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/opencsv/bean/-$$Lambda$JQt_2xUU8OlQKldVWJ146Zmfe7o;->f$0:Ljava/lang/reflect/Field;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
