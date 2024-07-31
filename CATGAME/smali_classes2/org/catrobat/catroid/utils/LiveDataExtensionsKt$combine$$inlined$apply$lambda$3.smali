.class final Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$3;
.super Ljava/lang/Object;
.source "LiveDataExtensions.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/utils/LiveDataExtensionsKt;->combine(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "TB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003\"\u0004\u0008\u0002\u0010\u00042\u000e\u0010\u0005\u001a\n \u0006*\u0004\u0018\u0001H\u0003H\u0003H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "A",
        "B",
        "C",
        "it",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "(Ljava/lang/Object;)V",
        "org/catrobat/catroid/utils/LiveDataExtensionsKt$combine$1$3"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $combine$1:Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$1;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$1;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$3;->$combine$1:Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1
    .param p1, "it"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$3;->$combine$1:Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$1;

    invoke-virtual {v0}, Lorg/catrobat/catroid/utils/LiveDataExtensionsKt$combine$$inlined$apply$lambda$1;->invoke()V

    return-void
.end method
