.class Lcom/magoware/magoware/webtv/util/PrefsHelper$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "PrefsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magoware/magoware/webtv/util/PrefsHelper;->getVodMenuInformation()Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/magoware/magoware/webtv/database/objects/ServerResponseObject<",
        "Lcom/magoware/magoware/webtv/network/mvvm/models/VodItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/util/PrefsHelper;


# direct methods
.method constructor <init>(Lcom/magoware/magoware/webtv/util/PrefsHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/magoware/magoware/webtv/util/PrefsHelper$1;->this$0:Lcom/magoware/magoware/webtv/util/PrefsHelper;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
