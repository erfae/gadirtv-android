.class Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "CatchUpRuler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1;->onResponse(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
        "Lcom/magoware/magoware/webtv/database/objects/CatchUpObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 569
    iput-object p1, p0, Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1$1;->this$1:Lcom/magoware/magoware/webtv/players/catchup/CatchUpRuler$1;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
