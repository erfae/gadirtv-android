.class public final synthetic Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$gG_i431sjwd8WeXliv2amM3nxnw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# instance fields
.field public final synthetic f$0:Ljava/io/PrintStream;


# direct methods
.method public synthetic constructor <init>(Ljava/io/PrintStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$gG_i431sjwd8WeXliv2amM3nxnw;->f$0:Ljava/io/PrintStream;

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/linkvue/-$$Lambda$gG_i431sjwd8WeXliv2amM3nxnw;->f$0:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method
