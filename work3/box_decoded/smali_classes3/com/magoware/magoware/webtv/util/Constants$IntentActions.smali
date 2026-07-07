.class public Lcom/magoware/magoware/webtv/util/Constants$IntentActions;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/util/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntentActions"
.end annotation


# static fields
.field public static final NETWORK_CHANGE_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/util/Constants;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/util/Constants;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/magoware/magoware/webtv/util/Constants$IntentActions;->this$0:Lcom/magoware/magoware/webtv/util/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
