.class Lorg/catrobat/catroid/web/ServerCalls$1;
.super Ljava/util/HashMap;
.source "ServerCalls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/web/ServerCalls;->scratchSearch(Ljava/lang/String;II)Lorg/catrobat/catroid/common/ScratchSearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/web/ServerCalls;

.field final synthetic val$numberOfItems:I

.field final synthetic val$pageNumber:I

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/web/ServerCalls;IILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/web/ServerCalls;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lorg/catrobat/catroid/web/ServerCalls$1;->this$0:Lorg/catrobat/catroid/web/ServerCalls;

    iput p2, p0, Lorg/catrobat/catroid/web/ServerCalls$1;->val$numberOfItems:I

    iput p3, p0, Lorg/catrobat/catroid/web/ServerCalls$1;->val$pageNumber:I

    iput-object p4, p0, Lorg/catrobat/catroid/web/ServerCalls$1;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 220
    iget p2, p0, Lorg/catrobat/catroid/web/ServerCalls$1;->val$numberOfItems:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "limit"

    invoke-virtual {p0, p3, p2}, Lorg/catrobat/catroid/web/ServerCalls$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget p2, p0, Lorg/catrobat/catroid/web/ServerCalls$1;->val$pageNumber:I

    iget p3, p0, Lorg/catrobat/catroid/web/ServerCalls$1;->val$numberOfItems:I

    mul-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "offset"

    invoke-virtual {p0, p3, p2}, Lorg/catrobat/catroid/web/ServerCalls$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "language"

    invoke-virtual {p0, p3, p2}, Lorg/catrobat/catroid/web/ServerCalls$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object p2, p0, Lorg/catrobat/catroid/web/ServerCalls$1;->val$query:Ljava/lang/String;

    const-string p3, "UTF-8"

    invoke-static {p2, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "q"

    invoke-virtual {p0, p3, p2}, Lorg/catrobat/catroid/web/ServerCalls$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-void
.end method
