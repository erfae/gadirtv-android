.class public Lcom/magoware/magoware/webtv/util/MagowareCacheKey$IntentKeys;
.super Ljava/lang/Object;
.source "MagowareCacheKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/util/MagowareCacheKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntentKeys"
.end annotation


# static fields
.field public static final CURRENT_CATEGORY_ID:Ljava/lang/String; = "current-category"


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/util/MagowareCacheKey;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/util/MagowareCacheKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/magoware/magoware/webtv/util/MagowareCacheKey$IntentKeys;->this$0:Lcom/magoware/magoware/webtv/util/MagowareCacheKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
