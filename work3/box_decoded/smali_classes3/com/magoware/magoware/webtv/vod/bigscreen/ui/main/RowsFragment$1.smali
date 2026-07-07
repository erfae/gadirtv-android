.class synthetic Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment$1;
.super Ljava/lang/Object;
.source "RowsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Card$VodType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 235
    invoke-static {}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->values()[Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/magoware/magoware/webtv/vod/bigscreen/ui/main/RowsFragment$1;->$SwitchMap$com$magoware$magoware$webtv$network$mvvm$models$Card$VodType:[I

    :try_start_0
    sget-object v1, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->ASSETS:Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;

    invoke-virtual {v1}, Lcom/magoware/magoware/webtv/network/mvvm/models/Card$VodType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
